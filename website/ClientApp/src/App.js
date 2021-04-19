import React, { Component } from 'react';
import { Route } from 'react-router';
import { Layout } from './components/Layout';
import { Home } from './components/Home';
import { Help } from './components/Help';
import { InfohudMode } from './components/InfohudMode';
import { Changelog } from './components/Changelog';

import './custom.css'

export default class App extends Component {
  static displayName = App.name;

  render () {
    return (
      <Layout>
        <Route exact path='/' component={Home} />
        <Route exact path='/help' component={Help} />
        <Route exact path='/infohudmode' component={InfohudMode} />
        <Route exact path='/changelog' component={Changelog} />
      </Layout>
    );
  }
}
