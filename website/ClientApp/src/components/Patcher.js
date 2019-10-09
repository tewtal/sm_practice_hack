import React, { Component } from 'react';
import { Upload } from './Upload';
import { FormGroup, Label, Row, Col, Card, CardHeader, CardBody, Button, Form, Input, InputGroup, InputGroupAddon, InputGroupText, Modal, ModalHeader, ModalBody, Progress } from 'reactstrap';
import { saveAs } from 'file-saver';
import { Link } from 'react-router-dom';

import saveStatePatch from '../files/saveStatePatch.ips';
import noSaveStatePatch from '../files/noSaveStatePatch.ips';

export class Patcher extends Component {
    static displayName = Patcher.name;

    constructor(props) {
        super(props);
        this.state = { romUploaded: false, baseRom: null, romType: 'savestates', showGeneratingDialog: false };
        this.localforage = require('localforage');
    }

    async getBaseRom()
    {
        try {
            let baseRom = await this.localforage.getItem("baseRom");
            if(baseRom !== null)
            {
                this.setState({ romUploaded: true, baseRom: baseRom });
            }
        } 
        catch (err) {
            return;
        }
    }

    applyIps = (rom, patch) => {
        const big = false;
        let offset = 5;
        const footer = 3;
        const view = new DataView(patch.buffer);
        while (offset + footer < patch.length) {
            const dest = (patch[offset] << 16) + view.getUint16(offset + 1, big);
            const length = view.getUint16(offset + 3, big);
            offset += 5;
            if (length > 0) {
                rom.set(patch.slice(offset, offset + length), dest);
                offset += length;
            } else {
                const rle_length = view.getUint16(offset, big);
                const rle_byte = patch[offset + 2];
                rom.set(Uint8Array.from(new Array(rle_length), () => rle_byte), dest);
                offset += 3;
            }
        }
    };
    
    readAsArrayBuffer = async (blob) => {
        const fileReader = new FileReader();
        return new Promise((resolve, reject) => {
            fileReader.onerror = () => {
                fileReader.abort();
                reject(new DOMException("Error parsing data"));
            };
    
            fileReader.onload = (e) => {
                resolve(e.target.result);
            };
    
            fileReader.readAsArrayBuffer(blob);
        });
    };


    componentDidMount() {
        this.getBaseRom();
    }

    onUploadedRom(e)
    {
        this.getBaseRom();
    }


    updateType(e)
    {
        this.setState({ romType: e.target.value });
    }

    async getPatch() {
        if(this.state.romType === "savestates")
            return new Uint8Array(await (await fetch(saveStatePatch, {cache: "no-store"})).arrayBuffer());
        else if(this.state.romType === "nosavestates")
            return new Uint8Array(await (await fetch(noSaveStatePatch, {cache: "no-store"})).arrayBuffer());
        else
            return null;
    }

    getFileName()
    {
        if(this.state.romType === "savestates")
            return "SM Practice Hack " + this.props.version + " (Savestates).sfc";
        else if(this.state.romType === "nosavestates")
            return "SM Practice Hack " + this.props.version + " (No savestates).sfc";
        else
            return "SM Practice Hack " + this.props.version + " (Unknown type).sfc";       
    }

    async createRom(e)
    {
        e.preventDefault();
        this.setState({ showGeneratingDialog: true });

        try {
            const rom = new Uint8Array(await this.readAsArrayBuffer(this.state.baseRom));
            const patch = await this.getPatch();
            this.applyIps(rom, patch);
            saveAs(new Blob([rom]), this.getFileName());
        }
        catch (err) {
            console.log(err);
        }

        this.setState({ showGeneratingDialog: false });
    }

    render () {
        
        const component = !this.state.romUploaded ? (<Card><CardBody><Upload onUpload={ (e) => this.onUploadedRom(e) } /></CardBody></Card>) :
            (
                <div>
                <Card>
                    <CardHeader className="bg-primary text-white">Patch ROM - Version {this.props.version}</CardHeader>
                    <CardBody>
                        <h5>Select the type of practice hack you want</h5>
                        <Form onSubmit={(e) => this.createRom(e)}>
                            <Row className="form-group">
                                <Col>
                                    <InputGroup>
                                        <InputGroupAddon addonType="prepend">
                                            <InputGroupText>Type</InputGroupText>                                            
                                        </InputGroupAddon>
                                        <Input type="select" id="type" defaultValue={this.state.romType} onChange={(e) => this.updateType(e)}>
                                            <option value="savestates">With Save States (SD2SNES only)</option>
                                            <option value="nosavestates">Without Save States (Emu/VC/Classic etc)</option>
                                        </Input>
                                    </InputGroup>
                                </Col>
                            </Row>
                            <Row className="form-group">
                                <Col>
                                    <br />
                                    <h5>Additional optional patches</h5>
                                </Col>
                            </Row>
                            <Row className="form-group">
                                <Col md="4">
                                    <Label for="msu1">
                                        <input type="checkbox" id="msu1"/>&nbsp;
                                        MSU-1
                                    </Label>
                                </Col>
                                <Col md="4">
                                    <Label for="something">
                                        <input type="checkbox" id="something"/>&nbsp;
                                        Some other patch
                                    </Label>
                                </Col>
                                <div className="w-100"></div>
                                <Col md="4">
                                    <Label for="msu2">
                                        <input type="checkbox" id="msu1"/>&nbsp;
                                        MSU-2
                                    </Label>
                                </Col>
                                <Col md="4">
                                    <Label for="something2">
                                        <input type="checkbox" id="something2"/>&nbsp;
                                        Superspecial patch
                                    </Label>
                                </Col>
                            </Row>
                            <Row>
                                <Col>
                                    <br />
                                    <Button color="success" type="submit">Download</Button>
                                </Col>
                            </Row>
                        </Form>
                    </CardBody>
                </Card>
                <br /><br />
                <Card>
                    <CardHeader className="bg-warning text-white">Information</CardHeader>
                    <CardBody>
                        <h6>For information on what's available in the practice hack and how to use it, you can visit the <strong><Link to="/help">Help</Link></strong> page.</h6>
                        <br />
                        <h6>If you're wondering what's changed since the last version, just head to the <strong><Link to="/help">Changelog</Link></strong></h6>
                        <br />
                        <h6>Strong with SNES Assembly? Take a look at the source code at <strong><a href="https://github.com/tewtal/sm_practice_hack">GitHub</a></strong></h6>
                    </CardBody>
                </Card>
                </div>
            );

        return (
            <div>
                {component}
                <Modal isOpen={this.state.showGeneratingDialog} backdrop="static" autoFocus>
                    <ModalHeader>Generating practice hack ROM</ModalHeader>
                    <ModalBody>
                        <p>Please wait while the practice hack ROM is being generated.</p>
                        <Progress animated color="info" value={100} />
                    </ModalBody>
                </Modal>                
            </div>
        );
    }
}