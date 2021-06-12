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
                                <Col md="3">Negative Numbers</Col>
                                <Col>Infohud displays negative numbers as large positive numbers; this is sometimes referred to as number underflow.
                                     For example, at the start of moonfall when vertical speed underflows to a number between 0 and -1,
                                     the whole number portion of vertical speed will be presented as 65535.
                                     -2 is displayed as 65534, -3 is displayed as 65533, and so on.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Hexadecimal</Col>
                                <Col>Some numbers like subpixels represent fractions. For example, the max walking speed is 2.75 pixels per frame.
                                     However the fractional speed is not stored in a readable form like 0.75. Instead it is stored as 49152, since 49152/65536 = 0.75.
                                     The best way to efficiently display this information is to use hexadecimal or base-16 numbering format.
                                     In this example, the fractional speed converts from 49152 to C000 (hexadecimal uses 0-9 and A-F as the 16 digits).</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Samus HP</Col>
                                <Col>Most infohud and room strat options fit in the bottom left of the infohud, but some options will also cover up Samus HP.
                                     This will be noted in the descriptions below. Shine Tune also covers up the right side of the infohud
                                     including the segment timer and door transition frames.</Col>
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
                                <Col>Y1 indicates you unmorphed on the first frame of the two-frame window, and Y2 indicates you unmorphed on the second frame.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you unmorphed late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on the shinespark activation:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# indicates you activated the spark early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>YY indicates you activated the spark on the correct frame.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you activated the spark late where the number tells you how many frames you were late.</Col>
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
                                <Col>Displays the vertical speed in pixels. Also Samus HP will be overwritten with space jump feedback:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First two characters = Number of frames that the jump button was held.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on the time when you jumped, with respect to space jump.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# indicates you were early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y# indicates you made a valid space jump. Normally you have 23 frames, but if underwater you have 41 frames.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you were late where the number tells you how many frames you were late.</Col>
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
                                     On NTSC, to walljump this number should be between 2 and 9 inclusive.
                                     Also, if the number of frames is 9 (required for a max-delayed walljump) and the walljump is taking place in WRITG, plasma room, or bubble mountain,
                                     then additional information may be presented if you appear to be making hi-jump bootless walljump attempts:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First two characters = Feedback on the max-delayed walljump:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>H# indicates you jumped high where the number tells you how many pixels you were high (can be zero).</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you jumped low where the number tells you how many pixels you were low (can be zero).</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Unfortunately there is no single pixel that is guaranteed to work for these specific walljumps; it also depends on the subpixels.
                                     If you get H0 9 or L0 9, then the jump is possible an estimated 75% of the time.
                                     With H0 9 you will know it is possible if you do not bonk the ledge.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Additionally Samus HP will be overwritten with the average climb speed in approximate pixels per frame (inflated by 2.4%).
                                     It averages vertical speed between jump presses, assuming the presses are within 2 seconds of each other
                                     and assuming the total speed does not overflow (if either of these happen then average will be blank).
                                     If total speed drops below zero then the average will be recorded as zero.</Col>
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
                                <Col md="3">Taco Tank</Col>
                                <Col>Provides feedback on attempts to collect the Retro Brinstar E-Tank using a precise walljump:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First Y = You started from the correct position (pressed against the wall facing left).</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First character = Number of frames that you initially held left (this will replace the first Y).
                                     In order to get the proper momentum to walljump and collect the tank, this will need to be either 3 or 4.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Second character = Number of frames after pressing left that jump was pressed.
                                     In order to get the proper momentum to walljump and collect the tank, this will need to be 3.
                                     It is normal for a 0 to appear when jumping straight up and down and shooting at the tank to reveal it.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Next two characters = Feedback on the walljump height:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you were low where the number tells you how many frames you were low.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y# (Y1-Y3) indicates you were at a good height,
                                     with # indicating the number of frames where you can grab the tank (based solely on walljump height).</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>B# (B1-B3) indicates you will bonk the ceiling but can still collect the tank,
                                     with # indicating the number of frames where you can grab the tank (based solely on walljump height).</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>H# indicates you were high where the number tells you how many frames you were high.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Additionally Samus HP will be overwritten with more feedback:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First character = Number of pixels away from the wall when the walljump occurred.
                                     Ideally this will be 7. If it is more than 7 then you will not execute a walljump.
                                     If is it less than 7, then you are practically guaranteed to have fewer frames to collect the tank.
                                     For example, if you see Y2 6, then it is likely you will only have 1 frame to grab the tank instead of 2.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Second character = Number of frames where you can collect the tank.
                                     This will take into account your walljump height, initial pixels away from the wall, and time when you break spin.
                                     For example, if you see Y2 71, then you broke spin too early and missed out on a frame to grab the tank.
                                     If you see an X, this means there was something wrong with the walljump right out of the gate,
                                     either because it was too high or low, or because it did not have the correct horizontal momentum.
                                     Even with a Y3 or B3 jump, it is not possible to reach the tank without the correct momentum.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on the time when you expanded your hitbox to grab the tank:</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# indicates you were early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y# indicates you had one chance to collect the tank.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you were late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Unfortunately even if you are coming in with a Y3 73 jump, you only get one chance to grab the tank.
                                     It does not matter if you choose Y1, Y2, or Y3 to attempt the grab, as it will come down to the collision oscillator.
                                     When Samus expands her hitbox, she will contact both the tank and the ceiling, but the game will only check one of the tiles.
                                     If it checks the ceiling tile, it will push Samus down and out of the ceiling and she will not be able to grab the tank on the next frame.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">Gate Glitch</Col>
                                <Col>Provides feedback on attempts to open a left-facing gate from the right side:</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>First character = Number of frames where you could have fired a missile through the gate (0-2).</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Last two characters = Feedback on the timing of your shot (only visible if number of frames greater than 0):</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>E# indicates you were early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>YY indicates you were on time with a one-frame window.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y1 indicates you shot on the first frame of a two-frame window, and Y2 indicates you shot on the second frame.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you were late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Note: This only gives feedback on whether the missile could have been fired through the gate.
                                     It does not predict if the missile would hit the blue or green switch that activates the gate.</Col>
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
                                <Col>E# indicates you jumped early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>YY indicates you jumped on the correct frame, which is the last frame before you fall into the water.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you jumped late where the number tells you how many frames you were late.</Col>
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
                                <Col>E# indicates you jumped early where the number tells you how many frames you were early.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>Y1 indicates you jumped on the first frame of the two-frame window, and Y2 indicates you jumped on the second frame.</Col>
                            </Row>
                            <Row>
                                <Col md="4"></Col>
                                <Col>L# indicates you jumped late where the number tells you how many frames you were late.</Col>
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
                                <Col>E# indicates you were early where the number tells you how many frames you were early.</Col>
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
                                <Col>L# indicates you were late where the number tells you how many frames you were late.</Col>
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
                                <Col>E# indicates you were early where the number tells you how many frames you were early.</Col>
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
                                <Col>L# indicates you were late where the number tells you how many frames you were late.</Col>
                            </Row>
                            <Row>
                                <Col md="3"></Col>
                                <Col>Note: If using the bombs method, there is a two-frame window where Samus will reach the correct position with 0 speed for two frames.
                                     In this case, you will get your best case feedback. For example, instead of seeing YYL2 followed by YYL3, you will just see YYL2.</Col>
                            </Row>
                            <br />
                            <Row>
                                <Col md="3">MB HP</Col>
                                <Col>Displays the HP of the second enemy. Most useful for the Mother Brain fight since Mother Brain uses the second enemy slot.</Col>
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
