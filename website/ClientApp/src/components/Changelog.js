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
                                            <h2>Version 2.2.x</h2>
                                            <p>Changes since 2.1.9:</p>
                                            <h5>Changes:</h5>
                                            <ul>
                                                <li>Added submenus for Preset Categories, InfoHUD Display Modes, and Room Strats. (2.2)</li>
                                                <li>Update room timers between Mother Brain phases. (2.2)</li>
                                                <li>Added support for five digit decimal numbers and hexidecimal. (2.2)</li>
                                                <li>Added RNG Controls for Phantoon, Draygon, and Crocomire. (2.2)</li>
                                                <li>Fixed Botwoon RNG Control and endgame cutscene crash. (2.2)</li>
                                                <li>Added presets for Any% PKRD. (2.2)</li>
                                                <li>Added Space Pants and random preset shortcut. (2.2.1)</li>
                                                <li>Added Gate Glitch and Taco Tank to the Room Strat list. (2.2.1)</li>
                                                <li>Replaced vertical speed subpixels with jump feedback. (2.2.1)</li>
                                                <li>When fanfare is off, music is not interrupted. (2.2.1)</li>
                                                <li>Added average climb speed to the Wall Jump infohud mode. (2.2.2)</li>
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
                                            <h2>Version 2.1.x</h2>
                                            <p>Changes since 2.0.15:</p>
                                            <h5>Changes:</h5>
                                            <ul>
                                                <li>Prevent accidental Murder Beam after setting Equipment from menu. (2.1)</li>
                                                <li>Added Shine Tune and Shot Timer to the Infohud Mode options. (2.1.1)</li>
                                                <li>Reordered Infohud Mode options and added Room Strat menu with Moat CWJ. (2.1.2)</li>
                                                <li>Added Horiz Speed (speed + momentum) and Jump Press to Infohud Mode options. (2.1.2)</li>
                                                <li>Added subpixels to position and speed options and improved Shine Tune feedback. (2.1.2)</li>
                                                <li>Added Spikesuit to Infohud Mode options and Shine to PB to Room Strat options. (2.1.3)</li>
                                                <li>Added Botwoon CF Room Strat and updated Spikesuit to consider springball. (2.1.4)</li>
                                                <li>Preset improvements for Any% PRKD, KPDR 21%, and GT Classic. (2.1.4)</li>
                                                <li>Fixed RBO preset for Pit Room to start before the door. (2.1.5)</li>
                                                <li>Initial implementation for transparency support. (2.1.6)</li>
                                                <li>Added Robot Flush to the Room Strat list. (2.1.7)</li>
                                                <li>Replaced Lag Counter with CPU Usage and added Invincibility toggle. (2.1.8)</li>
                                                <li>Added Quick Drop and Wall Jump (replacing Jump Press) to Infohud Mode options. (2.1.8)</li>
                                                <li>Added Elevator CF to the Room Strat list and a Infohud Mode/Room Strat help page. (2.1.8)</li>
                                                <li>Update the room timer on activating an elevator. (2.1.9)</li>
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
                                            <h2>Version 2.0.x</h2>
                                            <p>Changes since 2.0:</p>
                                            <h5>Changes:</h5>
                                            <ul>
                                                <li>Fix the Save State and Load State button combos being intercepted by the non-sd2snes rom. (2.0.1)</li>
                                                <li>Add support for RBO preset. (2.0.2)</li>
                                                <li>Add 2 Supers to the PRKD presets between Pre-Bowling and Speed. (2.0.3)</li>
                                                <li>Fix a few RBO preset states, and shorten many preset names. (2.0.4)</li>
                                                <li>Move RBO into a separate copy of the ROM, and enable the full set of RBO preset locations. (2.0.5)</li>
                                                <li>Add support for a KPDR preset using the beginner-friendly 25% route (Early Ice, Spazer, 5 tank, 25/10/5) (2.0.6)</li>
                                                <li>Add X Position and Y Position to the Infohud Mode options. (2.0.7)</li>
                                                <li>Add support for a GT Classic preset (2.0.8)</li>
                                                <li>Add support for a KPDR preset using the standard 21% route (3 tank, 20/10/5) (2.0.9)</li>
                                                <li>Move KPDR 21% presets to the combined ROM. (2.0.10)</li>
                                                <li>Add cooldown timer to the Infohud Mode options. (2.0.11)</li>
                                                <li>Add support for 14% Ice presets. (2.0.12)</li>
                                                <li>Included all preset categories in the same ROM (2.0.13)</li>
                                                <li>Add support for 14% Speed and Any% All Bosses (multiple routes). (2.0.14)</li>
                                                <li>Add support for 100% Early Croc route. Changed default shortcut for Load Preset. (2.0.15)</li>
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
                                                <li>Presets available for various points in the PRKD and Hundo routes</li>
                                                <li>Customizable artificial lag to offset the lack of minimap</li>
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
