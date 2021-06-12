import React, { Component } from 'react';
import { Patcher } from './Patcher';
import { Row, Col } from 'reactstrap';

export class Home extends Component {
  static displayName = Home.name;

  render () {
    return (
      <Row className="justify-content-center">
        <Col md="8">
          <div>
              <Patcher version="2.2.2"/>
          </div>
        </Col>
      </Row>
    );
  }
}
