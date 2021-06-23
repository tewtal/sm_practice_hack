import React, { Component } from 'react';
import { Row, Col, Card, CardHeader, CardBody, NavLink } from 'reactstrap';
import { Link } from 'react-router-dom';
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
                                        <li>Status display defaults to first enemy's HP, but can be configured to show Charge Timer, X-Factor timer, Shinespark timer and more.</li>
                                        <li>Item collection percentage</li>
                                        <li>Number of E-tanks</li>
                                        <li>Current total energy</li>
                                        <li>Segment timer in minutes.seconds.frames. Resets when starting a new game, loading a preset, or by controller shortcut.</li>
                                        <li>Timer in seconds.frames, resets when entering a new room and updates on item acquisition and room transitions. Can be set to realtime or gametime</li>
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
                                <Col md="3" style={{fontWeight: 'bold'}}>Start + Select + L + R</Col>
                                <Col>Soft reset the game</Col>
                            </Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>Start + Select</Col>
                                <Col>Opens the in-game menu (configurable in shortcuts menu)</Col>
                            </Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>B</Col>
                                <Col>Closes the in-game menu</Col>
                            </Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>Start+Y+L</Col>
                                <Col>Reloads the last used preset (configurable in shortcuts menu)</Col>
                            </Row>
                            <br />
                            <Row><Col><h5>Controller 2</h5></Col></Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>L or R</Col>
                                <Col>Toggles the status display options mentioned in <em>1</em></Col>
                            </Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>Up</Col>
                                <Col>Increases game speed</Col>
                            </Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>Down</Col>
                                <Col>Decreases game speed</Col>
                            </Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>Right</Col>
                                <Col>Frame advance</Col>
                            </Row>
                            <Row>
                                <Col md="3" style={{fontWeight: 'bold'}}>Left</Col>
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
                                <Col>Configure Samus' current equipment</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Refill</Col>
                                <Col>Refills your ammo and energy to their current max</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Toggle Category</Col>
                                <Col>Select a category to set your current equipment</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Toggle Items</Col>
                                <Col>Toggle major items</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Toggle Beams</Col>
                                <Col>Toggle beams</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Energy Tanks</Col>
                                <Col>Select your max E-tanks with left/right or A to increment</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Reserve Tanks</Col>
                                <Col>Select your max Reserve Tanks with left/right or A to increment</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Missiles</Col>
                                <Col>Select your max Missiles with left/right or A to increment</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Super Missiles</Col>
                                <Col>Select your max Super Missiles with left/right or A to increment</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Power Bombs</Col>
                                <Col>Select your max Power Bombs with left/right or A to increment</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Category Presets</Col>
                                <Col>Presets are pre-configured savestates that are specific to a particular category.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Select Preset Category</Col>
                                <Col>Select the desired category to be used with Category Presets</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Teleport</Col>
                                <Col>Warp to any save station</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Events</Col>
                                <Col>Toggle event flags for doors, bosses, items, and other events</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Reset All Events</Col>
                                <Col>Clear all event flags</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Reset All Doors</Col>
                                <Col>Reset all door locks</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Reset All Items</Col>
                                <Col>Replace all items that have already been collected</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Bosses</Col>
                                <Col>Toggle boss kills</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Misc</Col>
                                <Col>Toggle extra features</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Blue Suit</Col>
                                <Col>Give Samus the Blue Suit</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Flash Suit</Col>
                                <Col>Give Samus the Flash Suit (aka Spike Suit)</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Hyper Beam</Col>
                                <Col>Toggle Hyper Beam</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Baby Slowdown</Col>
                                <Col>Toggle ultra slow horizontal movement, as if grabbed by the Baby Metroid</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Magic Pants</Col>
                                <Col>Toggle a flashing animation on Samus to show when dash should be held for short charging</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Space Pants</Col>
                                <Col>Toggle a flashing animation on Samus during a space jump to show when you should jump</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1"></Col>
                                <Col>Note: If you have both Magic Pants and Space Pants on, only one of them will be used.
                                     If Space Jump is equipped then Space Pants will be used, otherwise Magic Pants will be used.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Fanfare</Col>
                                <Col>Toggle the fanfare for collecting items</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Music</Col>
                                <Col>Toggle the music</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Samus on top</Col>
                                <Col>Draw Samus on top of foreground objects/tiles</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Invincibility</Col>
                                <Col>Prevents Samus from taking damage or knockback</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Infohud</Col>
                                <Col>Configure the HUD</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">
                                    <NavLink tag={Link} className="text-dark" to="/infohudmode">Infohud Mode</NavLink>
                                </Col>
                                <Col>Select the value from RAM to be displayed in the bottom-left of the HUD.
                                    <NavLink tag={Link} className="text-dark" to="/infohudmode">Click the link for more details.</NavLink>
                                </Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">
                                    <NavLink tag={Link} className="text-dark" to="/infohudmode">Room Strat</NavLink>
                                </Col>
                                <Col>Select which Room Strat to be displayed in the bottom-left of the HUD. This only works if "Room Strat" is selected as the above Infohud Mode.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Frame Counters</Col>
                                <Col>Toggle the room timer in the top-right of the HUD between realtime and gametime</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Artificial Lag</Col>
                                <Col>Select a value to adjust how much lag occurs during normal gameplay. This is to compensate for the lack of a minimap on the HUD which would normally consume CPU cycles.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Customize RAM Watch</Col>
                                <Col>Setup addresses to be monitored by the RAM Watch HUD mode. Address 1 will appear in the bottom-left corner of the HUD, while Address 2 appears just to the right of Address 1.
                                Memory at these locations can be edited by configuring a Value and selecting 'Write to Address'. Toggle 'Lock Value' to automatically write the value once every frame. RAM Watch must
                                must be the selected HUD mode to continue writing to the address.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1"></Col>
                                <Col>Only one byte of hex can be configured at a time in the menu. 'Hi' refers to the first byte, while 'Lo' refers to the second. Set the Hi Address to 0D and the Lo Address to EC
                                to monitor the memory address $0DEC, which stores the counter for Samus direction changes while held by Draygon (among other uses).</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Game</Col>
                                <Col>Toggle pre-game options and Debug Mode without resetting</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">RNG Control</Col>
                                <Col>Pre-determine boss patterns for Phantoon or Botwoon</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Rerandomize</Col>
                                <Col>Toggles rerandomizing of RNG values upon loading a savestate. SD2SNES versions only.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Phan 1st Phase</Col>
                                <Col>Choose the direction and eye opening pattern for Phantoon's first phase</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Phan 2nd Phase</Col>
                                <Col>Choose the direction and eye opening pattern for Phantoon's second and subsequent phases</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Phan Eye Close</Col>
                                <Col>Choose how long Phantoon's eye will remain open after a ring of flames</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Botwoon RNG</Col>
                                <Col>Choose the opening pattern for Botwoon's first cycle</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Draygon from Right</Col>
                                <Col>Choose Draygon's attack type from the right side of the room. Draygon will always 'swoop' after a 'goop'.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Draygon from Left</Col>
                                <Col>Choose Draygon's attack type from the left side of the room. Draygon will always 'swoop' after a 'goop'.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Crocomire RNG</Col>
                                <Col>Set Crocomire to always step forward, or always swipe and shoot projectiles.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="4">Controller Shortcuts</Col>
                                <Col>Set or change button combinations for activating features. Press A to select the shortcut and then hold the desired button combination until it turns pink.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Main Menu</Col>
                                <Col>Open the InfoHUD menu</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Reload Preset</Col>
                                <Col>Reload the last selected category preset</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Reset Seg Timer</Col>
                                <Col>Reset the segment timer. Takes effect immediately but only updates the display on certain events/actions.</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Full Equipment</Col>
                                <Col>Refills your energy and ammo to their current max capacities</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Kill Enemies</Col>
                                <Col>Instantly deletes all enemies in the current room</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Random Preset</Col>
                                <Col>Randomly chooses a preset from your selected preset category</Col>
                            </Row>
                            <Row>
                                <Col md="3" className="offset-md-1">Clear Shortcuts</Col>
                                <Col>Resets Main Menu shortcut to default and removes button combos for all others.</Col>
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
