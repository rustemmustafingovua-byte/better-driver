.class public Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;
.super Ljava/lang/Object;
.source "NotificationAction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    }
.end annotation


# static fields
.field private static final ALLOW_GENERATED_REPLIES:Ljava/lang/String; = "allowGeneratedReplies"

.field private static final CANCEL_NOTIFICATION:Ljava/lang/String; = "cancelNotification"

.field private static final CONTEXTUAL:Ljava/lang/String; = "contextual"

.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final ICON_SOURCE:Ljava/lang/String; = "iconBitmapSource"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INPUTS:Ljava/lang/String; = "inputs"

.field private static final SHOWS_USER_INTERFACE:Ljava/lang/String; = "showsUserInterface"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final TITLE_COLOR_ALPHA:Ljava/lang/String; = "titleColorAlpha"

.field private static final TITLE_COLOR_BLUE:Ljava/lang/String; = "titleColorBlue"

.field private static final TITLE_COLOR_GREEN:Ljava/lang/String; = "titleColorGreen"

.field private static final TITLE_COLOR_RED:Ljava/lang/String; = "titleColorRed"


# instance fields
.field public final actionInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;",
            ">;"
        }
    .end annotation
.end field

.field public final allowGeneratedReplies:Ljava/lang/Boolean;

.field public final cancelNotification:Ljava/lang/Boolean;

.field public final contextual:Ljava/lang/Boolean;

.field public final icon:Ljava/lang/String;

.field public final iconSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

.field public final id:Ljava/lang/String;

.field public final showsUserInterface:Ljava/lang/Boolean;

.field public final title:Ljava/lang/String;

.field public final titleColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->actionInputs:Ljava/util/List;

    .line 101
    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->id:Ljava/lang/String;

    .line 102
    const-string v2, "cancelNotification"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->cancelNotification:Ljava/lang/Boolean;

    .line 103
    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->title:Ljava/lang/String;

    .line 105
    const-string v2, "titleColorAlpha"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 106
    .local v2, "a":Ljava/lang/Integer;
    const-string v3, "titleColorRed"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 107
    .local v3, "r":Ljava/lang/Integer;
    const-string v4, "titleColorGreen"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 108
    .local v4, "g":Ljava/lang/Integer;
    const-string v5, "titleColorBlue"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 109
    .local v5, "b":Ljava/lang/Integer;
    const/4 v6, 0x0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->titleColor:Ljava/lang/Integer;

    goto :goto_0

    .line 112
    :cond_0
    iput-object v6, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->titleColor:Ljava/lang/Integer;

    .line 115
    :goto_0
    const-string v7, "icon"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->icon:Ljava/lang/String;

    .line 116
    const-string v7, "contextual"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->contextual:Ljava/lang/Boolean;

    .line 117
    const-string v7, "showsUserInterface"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->showsUserInterface:Ljava/lang/Boolean;

    .line 118
    const-string v7, "allowGeneratedReplies"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    iput-object v7, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->allowGeneratedReplies:Ljava/lang/Boolean;

    .line 120
    const-string v7, "iconBitmapSource"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 121
    .local v7, "iconSourceIndex":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 122
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v6, v6, v8

    iput-object v6, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->iconSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    goto :goto_1

    .line 124
    :cond_1
    iput-object v6, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->iconSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 127
    :goto_1
    const-string v6, "inputs"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 129
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 131
    .local v6, "inputs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v6, :cond_2

    .line 132
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 133
    .local v9, "input":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v10, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->actionInputs:Ljava/util/List;

    new-instance v11, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;

    const-class v12, Ljava/lang/String;

    .line 135
    const-string v13, "choices"

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-static {v12, v13}, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->castList(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v12

    .line 136
    const-string v13, "allowFreeFormInput"

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 137
    const-string v14, "label"

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-class v15, Ljava/lang/String;

    .line 138
    const-string v0, "allowedMimeTypes"

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v15, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->castList(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v12, v13, v14, v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V

    .line 133
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v9    # "input":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    goto :goto_2

    .line 142
    .end local v6    # "inputs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    return-void
.end method

.method public static castList(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 146
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p1, "rawCollection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_1

    .line 154
    :catch_0
    move-exception v3

    .line 157
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 158
    :cond_1
    return-object v0
.end method
