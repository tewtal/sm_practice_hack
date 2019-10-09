import React, { Component } from 'react';
import { Row, Col, Card, CardHeader, CardBody } from 'reactstrap';
import hudImage from '../files/smhud.png'

export class Help extends Component {
  static displayName = Help.name;

  render() {
      return (
        <Row className="justify-content-center">
            <Col md="10">
                <div>
                    <Card>
                        <CardHeader className="bg-primary text-white">HUD Modifications</CardHeader>
                        <CardBody>
                            <Row>
                                <Col>
                                    <img src={hudImage} className="img-fluid" />
                                    <br /><br />
                                </Col>
                            </Row>
                            <Row>
                                <Col>
                                    <ol className="list" style={{fontSize: 1.1 + 'em'}}>
                                        <li>Shows first enemy's HP, Charge Timer, X-Factor timer or Shinespark timer depending on settings.</li>
                                        <li>Item Percentage</li>
                                        <li>Number of e-tanks</li>
                                        <li>Current total energy</li>
                                        <li>Game time in minutes.seconds</li>
                                        <li>Realtime timer in seconds.frames, resets when entering a new room and updates on item acquisition and room transitions.</li>
                                        <li>Gametime timer in seconds.frames, works the same as above.</li>
                                        <li>Lag frames, updates same as above</li>
                                        <li>Frames spent by last door transition</li>
                                    </ol>
                                </Col>
                            </Row>
                        </CardBody>
                    </Card>
                    <br />
                    <Card>
                        <CardHeader className="bg-primary text-white">Controller shortcuts</CardHeader>
                        <CardBody>
                            <Row><Col><h5>Controller 1</h5></Col></Row>
                            <Row>
                                <Col md="2" style={{fontWeight: 'bold'}}>Start + Select</Col>
                                <Col>Opens the in-game menu</Col>
                            </Row>
                            <Row>
                                <Col md="2" style={{fontWeight: 'bold'}}>B</Col>
                                <Col>Closes the in-game menu</Col>
                            </Row>
                            <br />
                            <Row><Col><h5>Controller 2</h5></Col></Row>
                            <Row>
                                <Col md="2" style={{fontWeight: 'bold'}}>L or R</Col>
                                <Col>Toggles the HUD display mentioned in <em>1</em></Col>
                            </Row>
                            <Row>
                                <Col md="2" style={{fontWeight: 'bold'}}>Up</Col>
                                <Col>Increases game speed</Col>
                            </Row>
                            <Row>
                                <Col md="2" style={{fontWeight: 'bold'}}>Down</Col>
                                <Col>Decreases game speed</Col>
                            </Row>
                            <Row>
                                <Col md="2" style={{fontWeight: 'bold'}}>Right</Col>
                                <Col>Frame advance</Col>
                            </Row>
                            <Row>
                                <Col md="2" style={{fontWeight: 'bold'}}>Left</Col>
                                <Col>Restore game speed</Col>
                            </Row>
                        </CardBody>
                    </Card>
                    <br />
                    <Card>
                        <CardHeader className="bg-primary text-white">Menu features</CardHeader>
                        <CardBody>
                            <Row>
                                <Col md="4">Equipment</Col>
                                <Col>Opens the equipment menu</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">100%</Col>
                                <Col>Gives the 100% item setup</Col>
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