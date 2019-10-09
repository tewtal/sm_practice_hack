import React, { Component } from 'react';
import { Form, Row, Col, Button } from 'reactstrap';

export class Upload extends Component {
    static displayName = Upload.name;

    constructor(props) {
        super(props);
        this.fileInput = React.createRef();
        this.localForage = require('localforage');
    }

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

    handleSubmitRom = async (e) => {
        e.preventDefault();
        const file = this.fileInput.current.files[0];

        let fileData = null;

        try {
            fileData = new Uint8Array(await this.readAsArrayBuffer(file));
        } catch (err) {
            console.log("Could not read uploaded file data", err);
            return;
        }

        try {
            await this.localForage.setItem("baseRom", new Blob([fileData]));
        } catch (err) {
            console.log("Could not store file to localforage:", err);
            return;
        }

        this.props.onUpload();
    }

    render() {
        return (
            <Form onSubmit={this.handleSubmitRom}>
                <h6>No ROM selected, please select the correct (unheadered) ROM file.</h6>
                <Row className="justify-content-between">
                    <Col md="6">ROM File: <input type="file" ref={this.fileInput} /></Col>
                </Row>
                <Row>
                    <Col md="2">
                        <br />
                        <Button type="submit" color="primary">OK</Button>
                    </Col>
                </Row>
            </Form>
        );
    }
}