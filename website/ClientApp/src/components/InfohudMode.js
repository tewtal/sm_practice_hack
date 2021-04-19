import React, { Component } from 'react';
import { Row, Col, Card, CardHeader, CardBody } from 'reactstrap';
import hudImage from '../files/smhud.png'

export class InfohudMode extends Component {
  static displayName = InfohudMode.name;

  render() {
      return (
        <Row className="justify-content-center">
            <Col md="10">
                <div>
                    <Card>
                        <CardHeader className="bg-primary text-white">Presentation</CardHeader>
                        <CardBody>
                            <Row>
                                <Col md="3">NTSC vs PAL</Col>
                                <Col>Currently the practice ROM only supports NTSC. The information on this help page is tailored towards NTSC and may be inaccurate on PAL.</Col>
                            </Row>
                      </CardBody>
                    </Card>
                    <br />
                </div>
            </Col>
        </Row>          
      );
  }
}
