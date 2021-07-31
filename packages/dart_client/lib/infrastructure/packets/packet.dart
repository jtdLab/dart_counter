abstract class Packet {
  // TODO maybe packet type in internal in every packet
  // incoming
  static const authResponse = 'authResponse';
  static const createGameResponse = 'createGameResponse';
  static const playerExited = 'playerExited';
  static const playerJoined = 'playerJoined';
  static const snapshot = 'snapshot';

  // outgoing
  static const authRequest = 'authRequest';
  static const cancelGame = 'cancelGame';
  static const createGame = 'createGame';
  static const invitePlayer = 'invitePlayer';
  static const joinGame = 'joinGame';
  static const performThrow = 'performThrow';
  static const removePlayer = 'removePlayer';
  static const reorderPlayer = 'reorderPlayer';
  static const setMode = 'setMode';
  static const setSize = 'setSize';
  static const setStartingPoints = 'setStartingPoints';
  static const setType = 'setType';
  static const startGame = 'startGame';
  static const undoThrow = 'undoThrow';
}
