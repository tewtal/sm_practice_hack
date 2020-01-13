import React, { Component } from 'react';
import { Upload } from './Upload';
import { FormGroup, Label, Row, Col, Card, CardHeader, CardBody, Button, Form, Input, InputGroup, InputGroupAddon, InputGroupText, Modal, ModalHeader, ModalBody, Progress } from 'reactstrap';
import { saveAs } from 'file-saver';
import { Link } from 'react-router-dom';

import saveStatePatch from '../files/saveStatePatch.ips';
import noSaveStatePatch from '../files/noSaveStatePatch.ips';
import saveStatePatchRbo from '../files/saveStatePatchRbo.ips';
import noSaveStatePatchRbo from '../files/noSaveStatePatchRbo.ips';
import saveStatePatchKpdr25 from '../files/saveStatePatchKpdr25.ips';
import noSaveStatePatchKpdr25 from '../files/noSaveStatePatchKpdr25.ips';
import saveStatePatchGtclassic from '../files/saveStatePatchGtclassic.ips';
import noSaveStatePatchGtclassic from '../files/noSaveStatePatchGtclassic.ips';
import saveStatePatchKpdr21 from '../files/saveStatePatchKpdr21.ips';
import noSaveStatePatchKpdr21 from '../files/noSaveStatePatchKpdr21.ips';

export class Patcher extends Component {
    static displayName = Patcher.name;

    constructor(props) {
        super(props);
        this.state = { romUploaded: false, baseRom: null, romType: 'savestates', category: 'combined', showGeneratingDialog: false };
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

    updateCategory(e)
    {
        this.setState({ category: e.target.value });
    }

    async getPatch() {
        if(this.state.romType === "savestates")
            if(this.state.category === "combined")
                return new Uint8Array(await (await fetch(saveStatePatch, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "rbo")
                return new Uint8Array(await (await fetch(saveStatePatchRbo, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "kpdr25")
                return new Uint8Array(await (await fetch(saveStatePatchKpdr25, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "gtclassic")
                return new Uint8Array(await (await fetch(saveStatePatchGtclassic, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "kpdr21")
                return new Uint8Array(await (await fetch(saveStatePatchKpdr21, {cache: "no-store"})).arrayBuffer());
            else
                return null;
        else if(this.state.romType === "nosavestates")
            if(this.state.category === "combined")
                return new Uint8Array(await (await fetch(noSaveStatePatch, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "rbo")
                return new Uint8Array(await (await fetch(noSaveStatePatchRbo, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "kpdr25")
                return new Uint8Array(await (await fetch(noSaveStatePatchKpdr25, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "gtclassic")
                return new Uint8Array(await (await fetch(noSaveStatePatchGtclassic, {cache: "no-store"})).arrayBuffer());
            else if(this.state.category === "kpdr21")
                return new Uint8Array(await (await fetch(noSaveStatePatchKpdr21, {cache: "no-store"})).arrayBuffer());
            else
                return null;
        else
            return null;
    }

    getFileName()
    {
        if(this.state.romType === "savestates")
            if(this.state.category === "rbo")
                return "SM Practice Hack " + this.props.version + " (Savestates) RBO.sfc";
            else if(this.state.category === "kpdr25")
                return "SM Practice Hack " + this.props.version + " (Savestates) KPDR25.sfc";
            else if(this.state.category === "gtclassic")
                return "SM Practice Hack " + this.props.version + " (Savestates) GT Classic.sfc";
            else if(this.state.category === "kpdr21")
                return "SM Practice Hack " + this.props.version + " (Savestates) KPDR21.sfc";
            else
                // Return this for unknown category, as well as combined
                return "SM Practice Hack " + this.props.version + " (Savestates).sfc";
        else if(this.state.romType === "nosavestates")
            if(this.state.category === "rbo")
                return "SM Practice Hack " + this.props.version + " (No savestates) RBO.sfc";
            else if(this.state.category === "kpdr25")
                return "SM Practice Hack " + this.props.version + " (No savestates) KPDR25.sfc";
            else if(this.state.category === "gtclassic")
                return "SM Practice Hack " + this.props.version + " (No savestates) GT Classic.sfc";
            else if(this.state.category === "kpdr21")
                return "SM Practice Hack " + this.props.version + " (No savestates) KPDR21.sfc";
            else
                // Return this for unknown category, as well as combined
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
                                    <InputGroup>
                                        <InputGroupAddon addonType="prepend">
                                            <InputGroupText>Preset Category</InputGroupText>                                            
                                        </InputGroupAddon>
                                        <Input type="select" id="category" defaultValue={this.state.category} onChange={(e) => this.updateCategory(e)}>
                                            <option value="combined">Combined (100%, Any% PRKD)</option>
                                            <option value="rbo">RBO</option>
                                            <option value="kpdr25">KPDR 25% (Early Ice, Spazer, 5 tank, 25/10/5)</option>
                                            <option value="gtclassic">GT Classic</option>
                                            <option value="kpdr21">KPDR 21% (3 tank, 20/10/5)</option>
                                        </Input>
                                    </InputGroup>
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
                        <h6>This website is still in a bit of a WIP state, so a few pages like the Help page aren't done yet, but it's being worked on!</h6>
                        <br />
                        <h6>For information on what's available in the practice hack and how to use it, you can visit the <strong><Link to="/help">Help</Link></strong> page.</h6>
                        <br />
                        <h6>If you're wondering what's changed since the last version, just head to the <strong><Link to="/changelog">Changelog</Link></strong></h6>
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
