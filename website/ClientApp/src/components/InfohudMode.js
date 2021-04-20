import React, { Component } from 'react';
import { Row, Col, Card, CardHeader, CardBody } from 'reactstrap';

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
                            <br />
                            <Row>
                                <Col md="3">Number Overflow</Col>
                                <Col>When a number is too large to be displayed by the infohud, the most-significant digit will go beyond the normal 0-9 range.
                                     The next ten characters are also 0-9 just inverted (colors are flipped), so as long as the overflow is not too large the number can still make sense.
                                     For example, Ridley HP of 18000 is displayed as 8000 with the 8 inverted. For larger numbers such as Mother Brain Stage 3 HP of 36000,
                                     the most-significant digit will display seemingly random characters until the health drops below 20000.
                                     They are not actually random, but they may not be that useful. As another example, 32767 is displayed as L767.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Negative Numbers</Col>
                                <Col>Infohud displays negative numbers as large positive numbers; this is sometimes referred to as number underflow.
                                     For example, at the start of moonfall when vertical speed underflows to a number between 0 and -1,
                                     the whole number portion of vertical speed will be presented as 65535. Since this is too large to be displayed in four digits,
                                     the most-significant digit picks another sprite in memory; it happens to pick a 2.
                                     In summary, -1 is displayed as 2535, -2 is displayed as 2534, -3 is displayed as 2533, and so on.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Hexadecimal</Col>
                                <Col>Some numbers like subpixels represent fractions. For example, the max walking speed is 2.75 pixels per frame.
                                     However the fractional speed is not stored in a readable form like 0.75. Instead it is stored as 49152, since 49152/65536 = 0.75.
                                     The best way to efficiently display this information is to use hexadecimal or base-16 numbering format.
                                     In this example, the fractional speed converts from 49152 to C000 (hexadecimal uses 0-9 and A-F as the 16 digits).
                                     Instead of hexadecimal letters, the infohud uses number overflow so it is displayed as 2000 with the 2 inverted.
                                     Number overflow is used for each digit, so if we are trying to display the maximum number 65535 in hexadecimal,
                                     it will be displayed as inverted 5555.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Samus HP</Col>
                                <Col>Most infohud and room strat options fit in the bottom left of the infohud, but some options will also cover up Samus HP.
                                     This will be noted in the descriptions below. Shine Tune also covers up the right side of the infohud including the segment timer and door transition frames.</Col>
                            </Row>
                      </CardBody>
                    </Card>
                    <br />
                    <Card>
                        <CardHeader className="bg-primary text-white">Infohud Mode features</CardHeader>
                        <CardBody>
                            <Row>
                                <Col md="3">Enemy HP</Col>
                                <Col>Displays the HP of the first enemy. Most useful for boss fights, although Mother Brain uses the second enemy slot.
                                     For Mother Brain HP, you can select Room Strat, and then for the Room Strat select MB HP.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Room Strat</Col>
                                <Col>Allows you to select a Room Strat instead of an Infohud Mode. See below section for the various Room Strats.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Charge</Col>
                                <Col>Counts down the frames from the time you press shoot until the time the beam would be charged.
                                     The timer resets if you let go of the shoot button.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">X Factor</Col>
                                <Col>Counts down the frames from the time you press shoot until the time the SBA (Special Beam Attack) would activate.
                                     The timer resets if you let go of the shoot button or if the SBA activates.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Cooldown</Col>
                                <Col>Counts down the frames from time you activate a weapon or lay a bomb until the time you can fire again.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Shinespark</Col>
                                <Col>Counts down the frames from the time you charge a shinespark until the time the charge runs out.
                                     If you activate the shinespark in time, it will display the number of frames to spare.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Dash</Col>
                                <Col>Displays the speed boost counter. This number can be between 0 and 4.
                                     When building a shinespark charge, each successful tap (or held dash button) will increment the dash counter.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Shine Tune</Col>
                                <Col>Displays the number of extra frames that dash was held while building a shinespark.
                                     There can be up to eight numbers. For example, consider the following 3-tap short charge:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>9 2 10 0 ...  814 14 7</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>The first tap was a little early, with dash held 9 frames early and 2 frames late for a total of 12 frames (counting the magic frame).
                                     The second tap was almost too early, with dash held 10 frames early and 0 frames late.
                                     The third tap was pressed 8 frames early and held. We can see it was held because the next two numbers are the same and are 14 or larger.
                                     This indicates that the the third tap was held 14 frames late and the fourth tap was held 14 frames early, which really means the dash button was held.
                                     The last number is the frames it took to complete the charge by pressing down or for the charge to be cancelled.
                                     The first and last numbers can be rather large; in fact the first number will be displayed as XX if it is larger than 99.
                                     If you miss a tap then you will get early or late feedback on that. In this example if the second tap were one frame sooner then you would see:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>9 2 11E1 ...</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>This indicates the second tap started 11 frames early and ended 1 frame too early.
                                     For reference, on NTSC the magic frames are 25 frames apart between first and second tap,
                                     20 frames apart between second and third tap, and 15 frames apart between third and fourth tap.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">I Frames</Col>
                                <Col>Counts down the invulnerability frames after Samus takes damage.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Spikesuit</Col>
                                <Col>Displays feedback on the two inputs required to generate a spikesuit.
                                     It assumes you will be taking damage from spikes which give 60 I-frames and 10 frames of knockback.
                                     The feedback is as follows:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First two characters = Feedback on the unmorph:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E1 indicates you unmorphed the same frame you took damage, which is one frame early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E indicates you unmorphed two or more frames early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y1 or Y2 indicates you unmorphed on one of the two correct frames.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# (L1-L9) indicates you unmorphed late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>LX indicates you unmorphed 10 or more frames late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on the shinespark activation:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# (E1-E9) indicates you activated the spark early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>EX indicates you activated the spark 10 or more frames early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>YY indicates you activated the spark on the correct frame.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# (L1-L9) indicates you activated the spark late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>LX indicates you activated the spark 10 or more frames late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>If you get the feedback Y1E1, then this means you unmorphed after taking damage and activated the shinespark
                                     all before you ran out of knockback frames. This is known as the bad frame since Samus will do the shinespark
                                     but not give you a spikesuit. It is a double-frame-perfect mistake.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">CPU Usage</Col>
                                <Col>Counts down the number of scanlines that were drawn during processing of the next frame.
                                     The screen has a resolution of 256x224, so at 60 fps, 224 scanlines must be drawn every 1/60th of a second.
                                     This count is converted to a percentage to get a sense of the lag.
                                     The higher the percentage, the closer we were to not finishing processing in time.
                                     If processing does not finish in time, then the game must draw the current frame again and this is a lag frame.
                                     If the percentage is a low number, then it is likely the game lagged
                                     with most of the work done during the previous frame and a small amount of work left over for the next frame.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">X Position</Col>
                                <Col>Displays the X position in pixels. Also Samus HP is replaced by the subpixels in hexadecimal.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Y Position</Col>
                                <Col>Displays the Y position in pixels. Also Samus HP is replaced by the subpixels in hexadecimal.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Horiz Speed</Col>
                                <Col>Displays the horizontal speed combined with momentum in pixels. Also Samus HP is replaced by the subpixels in hexadecimal.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Vert Speed</Col>
                                <Col>Displays the vertical speed combined with momentum in pixels. Also Samus HP is replaced by the subpixels in hexadecimal.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Quick Drop</Col>
                                <Col>Displays the number of frames between pressing a left or right input and another left or right input, if the number of frames is between 1 and 20.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Wall Jump</Col>
                                <Col>Displays the number of frames between pressing a left or right input and pressing the jump button, if the number of frames is between 1 and 20.
                                     Also, if the number of frames is 9 (required for a max-delayed walljump) and the walljump is taking place in WRITG, plasma room, or bubble mountain,
                                     then additional information may be presented if you appear to be making hi-jump bootless walljump attempts:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First two characters = Feedback on the max-delayed walljump:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>H# (H0-H9) indicates you jumped high where the number tells you how many pixels you were high.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>HX indicates you jumped 10 or more pixels too high.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# (L0-L9) indicates you jumped low where the number tells you how many pixels you were low.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>LX indicates you jumped 10 or more frames too low.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Unfortunately there is no single pixel that is guaranteed to work for these specific walljumps; it also depends on the subpixels.
                                     If you get H0 9 or L0 9, then the jump is possible an estimated 75% of the time.
                                     With H0 9 you will know it is possible if you do not bonk the ledge.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Shot Timer</Col>
                                <Col>Displays the number of frames between pressing the shoot button.</Col>
                            </Row>
                      </CardBody>
                    </Card>
                    <br />
                    <Card>
                        <CardHeader className="bg-primary text-white">Room Strat features</CardHeader>
                        <CardBody>
                            <Row>
                                <Col md="3">MB HP</Col>
                                <Col>Displays the HP of the second enemy. Most useful for the Mother Brain fight since Mother Brain uses the second enemy slot.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Moat CWJ</Col>
                                <Col>Provides feedback on attempts to cross the moat using a Continuous Wall Jump:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First Y = You started from the correct position. Acceptable starting positions are in the previous room pressed against the door,
                                     or are as far left as possible in the moat room with the door open. Other positions may work for moat CWJ,
                                     but these are the two normalized positions providing a good chance of success. If you try other starting positions,
                                     the trick may become more difficult (double-frame-perfect) or even impossible.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First two characters = Feedback on the first jump (this will overwrite the first Y):</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# (E1-E9) indicates you jumped early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>EX indicates you jumped 10 or more frames early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>YY indicates you jumped on the correct frame, which is the last frame before you fall into the water.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# (L1-L9) indicates you jumped late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>LX indicates you jumped 10 or more frames late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on the second jump:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Blank indicates the game did not register your second jump.
                                     This can happen if you are collecting the missile pack and then press jump too soon as the fanfare box is closing.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# (E1-E9) indicates you jumped early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>EX indicates you jumped 10 or more frames early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y1 indicates you jumped on the first frame of the two-frame window, and Y2 indicates you jumped on the second frame.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# (L1-L9) indicates you jumped late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>LX indicates you jumped 10 or more frames late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Note: If you started from inside the moat room (as far left as possible in the room), it is possible to observe YYY2 and miss the jump.
                                     Since Samus has a subpixel position, even when Samus appears to be as far left as possible,
                                     she may need to be even further left in subpixels in order to get a two-frame window on the second jump.
                                     A majority of subpixels work. Also if you start from outside the moat room then it is always a two-frame window regardless of subpixels.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Shine to PB</Col>
                                <Col>Similar to shinespark, except Samus HP is overwritten to display information for the power bomb.
                                     Counts down the frames from the time you charge a shinespark until the time the charge runs out.
                                     If you activate the shinespark in time, it will display the number of frames to spare.
                                     If you lay a power bomb, it will display the number of frames to spare.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Botwoon CF</Col>
                                <Col>Provides feedback on attempts to crystal flash clip in Botwoon Hallway:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First Y = You laid a power bomb at the correct height (maximum height that you can).</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Second Y = You returned to the same X and Y location (within 3 seconds or so) and you had 0 vertical speed.
                                     You should also have 0 horizontal speed although this is not checked.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on your timing in returning to the correct position:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# (E1-E9) indicates you were early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>EX indicates you were 10 or more frames early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>YY indicates you were on time. If you did not get the crystal flash, it could mean you were not holding the correct inputs
                                     (you must hold only L, R, down, and shoot), or it could mean you did not meet the conditions for a crystal flash.
                                     You must have 10+ missiles, 10+ super missiles, 10+ power bombs, and be below 50 HP with empty reserves
                                     (having non-empty reserves to manual will prevent a crystal flash). It is often stated that you need 11+ power bombs,
                                     but that is counting the power bomb you laid at the beginning of the crystal flash clip attempt.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# (L1-L9) indicates you were late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>LX indicates you were 10 or more frames late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Note: If using the bombs method, there is a two-frame window where Samus will reach the correct position with 0 speed for two frames.
                                     In this case, you will get your best case feedback. For example, instead of seeing YYL2 followed by YYL3, you will just see YYL2.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Elevator CF</Col>
                                <Col>Provides feedback on attempts to crystal flash while initiating a downward elevator on the same frame,
                                     which grants Samus a spikesuit:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First character = Feedback on the power bomb:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y indicates you were at the correct height.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>X indicates you were not at the correct height.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>% indicates you were at the horizontal center of the elevator (regardless of whether or not you were at the correct height).
                                     Laying the power bomb at the center is risky since, if you mistime the down input,
                                     it is possible for the crystal flash to activate after Samus has started travelling down the elevator,
                                     which is likely a run-ending mistake.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Second Y = You returned to the same X and Y location (within 3 seconds or so) and you had 0 vertical speed.
                                     You should also have 0 horizontal speed although this is not checked.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on your timing in pressing down at the correct position:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# (E1-E9) indicates you were early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>EX indicates you were 10 or more frames early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>YY indicates you were on time. If you did not get the spikesuit, it could mean you were not holding the correct inputs
                                     (you must hold only L, R, and shoot, in addition to pressing down on the correct frame),
                                     or it could mean you did not meet the conditions for a crystal flash.
                                     You must have 10+ missiles, 10+ super missiles, 10+ power bombs, and be below 50 HP with empty reserves
                                     (having non-empty reserves to manual will prevent a crystal flash). It is often stated that you need 11+ power bombs,
                                     but that is counting the power bomb you laid at the beginning of the crystal flash clip attempt.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# (L1-L9) indicates you were late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>LX indicates you were 10 or more frames late.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Robot Flush</Col>
                                <Col>Provides feedback on attempts to flush the two robots in the Bowling Alley:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First 1 = The first robot was hit by a beam shot.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Second 1 = The first robot fell down.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First 2 = The second robot was hit by a beam shot.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Second 2 = The second robot fell down.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Thus 1122 indicates both robots were successfully flushed.</Col>
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
