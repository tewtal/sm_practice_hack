import React, { Component } from 'react';
import { Row, Col, Card, CardHeader, CardBody } from 'reactstrap';

export class Changelog extends Component {
  static displayName = Changelog.name;

  render() {
      return (
        <Row className="justify-content-center">
            <Col md="10">
                <div>
                    <Card>
                        <CardHeader className="bg-primary text-white">Changelog</CardHeader>
                        <CardBody>
                            <Row>
                                <Col>
                                    <Card>
                                        <CardBody>
                                            <h2>Version 2.0.x</h2>
                                            <p>Changes since 2.0:</p>
                                            <h5>Changes:</h5>
                                            <ul>
                                                <li>Fix the Save State and Load State button combos being intercepted by the non-sd2snes rom. (2.0.1)</li>
                                            </ul>
                                        </CardBody>
                                    </Card>
                                </Col>
                            </Row>
                            <br />
                            <Row>
                                <Col>
                                    <Card>
                                        <CardBody>
                                            <h2>Version 2.0</h2>
                                            <p>This version includes a major rewrite of the menu system and a bunch more exciting changes made by Pinkus.</p>
                                            <h5>Changes:</h5>
                                            <ul>
                                                <li>New thing 1</li>
                                                <li>New thing 2</li>
                                                <ul>
                                                    <li>Sub thing 1</li>
                                                </ul>
                                            </ul>
                                        </CardBody>
                                    </Card>
                                </Col>
                            </Row>
                            <br />
                            <Row>
                                <Col>
                                    <Card>
                                        <CardBody>
                                            <h2>Version 1.42</h2>
                                            <h5>Changes:</h5>
                                            <ul>
                                                <li>Added "Magic Pants" to the menu (Config -> Infohud -> Magic Pants). This flashes Samus on the frame run needs to be held to charge a spark.</li>
                                                <li>Added options for setting specific ammo counts.</li>
                                                <li>Added "Reset all Doors" and "Reset all Items" to the events menu.</li>
                                                <li>Possibly some other small changes</li>
                                            </ul>
                                        </CardBody>
                                    </Card>
                                </Col>
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
