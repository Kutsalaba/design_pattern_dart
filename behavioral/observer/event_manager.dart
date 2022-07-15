import 'dart:io';

import 'listeners/event_listener.dart';

class EventManager {
    Map<String, List<EventListener>> listeners = {};

    EventManager(List<String> operations) {
      for(String oper in operations) {
        listeners[oper] = [];
      }
    }

    void subscribe(String eventType, EventListener listener) {
        List<EventListener> users = listeners[eventType]!;
        users.add(listener);
    }

    void unsubscribe(String eventType, EventListener listener) {
        List<EventListener> users = listeners[eventType]!;
        users.remove(listener);
    }

    void notify(String eventType, File file) {
        List<EventListener> users = listeners[eventType]!;
        for (EventListener listener in users) {
            listener.update(eventType, file);
        }
    }
}