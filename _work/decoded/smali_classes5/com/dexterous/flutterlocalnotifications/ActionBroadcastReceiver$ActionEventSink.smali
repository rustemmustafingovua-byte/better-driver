.class Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;
.super Ljava/lang/Object;
.source "ActionBroadcastReceiver.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionEventSink"
.end annotation


# instance fields
.field final cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$1;

    .line 112
    invoke-direct {p0}, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_0
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arguments"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 139
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 2
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 128
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 129
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 130
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->cache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver$ActionEventSink;->eventSink:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 134
    return-void
.end method
