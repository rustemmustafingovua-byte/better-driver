.class public Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
.super Ljava/lang/Object;
.source "TextInputChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;
    }
.end annotation


# instance fields
.field public final actionLabel:Ljava/lang/String;

.field public final autocorrect:Z

.field public final autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

.field public final contentCommitMimeTypes:[Ljava/lang/String;

.field public final enableDeltaModel:Z

.field public final enableIMEPersonalizedLearning:Z

.field public final enableSuggestions:Z

.field public final fields:[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

.field public final hintLocales:[Ljava/util/Locale;

.field public final inputAction:Ljava/lang/Integer;

.field public final inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

.field public final obscureText:Z

.field public final textCapitalization:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;


# direct methods
.method public constructor <init>(ZZZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;Ljava/lang/Integer;Ljava/lang/String;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;[Ljava/lang/String;[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;[Ljava/util/Locale;)V
    .locals 0
    .param p1, "obscureText"    # Z
    .param p2, "autocorrect"    # Z
    .param p3, "enableSuggestions"    # Z
    .param p4, "enableIMEPersonalizedLearning"    # Z
    .param p5, "enableDeltaModel"    # Z
    .param p6, "textCapitalization"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;
    .param p7, "inputType"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;
    .param p8, "inputAction"    # Ljava/lang/Integer;
    .param p9, "actionLabel"    # Ljava/lang/String;
    .param p10, "autofill"    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;
    .param p11, "contentCommitMimeTypes"    # [Ljava/lang/String;
    .param p12, "fields"    # [Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
    .param p13, "hintLocales"    # [Ljava/util/Locale;

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-boolean p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->obscureText:Z

    .line 680
    iput-boolean p2, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autocorrect:Z

    .line 681
    iput-boolean p3, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableSuggestions:Z

    .line 682
    iput-boolean p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableIMEPersonalizedLearning:Z

    .line 683
    iput-boolean p5, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableDeltaModel:Z

    .line 684
    iput-object p6, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->textCapitalization:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    .line 685
    iput-object p7, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    .line 686
    iput-object p8, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputAction:Ljava/lang/Integer;

    .line 687
    iput-object p9, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->actionLabel:Ljava/lang/String;

    .line 688
    iput-object p10, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    .line 689
    iput-object p11, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->contentCommitMimeTypes:[Ljava/lang/String;

    .line 690
    iput-object p12, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fields:[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 691
    iput-object p13, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->hintLocales:[Ljava/util/Locale;

    .line 692
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
    .locals 19
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 456
    move-object/from16 v0, p0

    const-string v1, "inputAction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "inputActionName":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, "fields":[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
    const-string v3, "fields"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 462
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 463
    .local v3, "jsonFields":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v2, v4, [Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 464
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 465
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    move-result-object v5

    aput-object v5, v2, v4

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v17, v2

    goto :goto_1

    .line 461
    .end local v3    # "jsonFields":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_1
    move-object/from16 v17, v2

    .line 468
    .end local v2    # "fields":[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
    .local v17, "fields":[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
    :goto_1
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputActionFromTextInputAction(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 471
    .local v13, "inputAction":Ljava/lang/Integer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v2, "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "contentCommitMimeTypes"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 474
    move-object v3, v5

    goto :goto_2

    .line 475
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :goto_2
    nop

    .line 476
    .local v3, "contentCommitMimeTypes":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 477
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 478
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 483
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x0

    .line 484
    .local v4, "hintLocales":[Ljava/util/Locale;
    const-string v6, "hintLocales"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 485
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 486
    .local v6, "hintLocalesJson":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v4, v7, [Ljava/util/Locale;

    .line 487
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 488
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    aput-object v8, v4, v7

    .line 487
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v18, v4

    goto :goto_5

    .line 484
    .end local v6    # "hintLocalesJson":Lorg/json/JSONArray;
    .end local v7    # "i":I
    :cond_5
    move-object/from16 v18, v4

    .line 492
    .end local v4    # "hintLocales":[Ljava/util/Locale;
    .local v18, "hintLocales":[Ljava/util/Locale;
    :goto_5
    move-object v4, v5

    new-instance v5, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 493
    const-string v6, "obscureText"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 494
    const-string v7, "autocorrect"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 495
    const-string v8, "enableSuggestions"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 496
    const-string v9, "enableIMEPersonalizedLearning"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 497
    const-string v10, "enableDeltaModel"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 498
    const-string v11, "textCapitalization"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    move-result-object v11

    .line 499
    const-string v12, "inputType"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    move-result-object v12

    .line 501
    const-string v14, "actionLabel"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v14, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 502
    :goto_6
    const-string v15, "autofill"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    move-result-object v4

    :goto_7
    move-object v15, v4

    .line 503
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, [Ljava/lang/String;

    invoke-direct/range {v5 .. v18}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;-><init>(ZZZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;Ljava/lang/Integer;Ljava/lang/String;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;[Ljava/lang/String;[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;[Ljava/util/Locale;)V

    .line 492
    return-object v5

    .line 458
    .end local v2    # "contentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "contentCommitMimeTypes":Lorg/json/JSONArray;
    .end local v13    # "inputAction":Ljava/lang/Integer;
    .end local v17    # "fields":[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
    .end local v18    # "hintLocales":[Ljava/util/Locale;
    :cond_8
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Configuration JSON missing \'inputAction\' property."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static inputActionFromTextInputAction(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p0, "inputAction"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 515
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 510
    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "TextInputAction.previous"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x8

    goto :goto_1

    :sswitch_1
    const-string v0, "TextInputAction.newline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v0, "TextInputAction.go"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "TextInputAction.search"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "TextInputAction.send"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v6

    goto :goto_1

    :sswitch_5
    const-string v0, "TextInputAction.none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v7

    goto :goto_1

    :sswitch_6
    const-string v0, "TextInputAction.next"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v1

    goto :goto_1

    :sswitch_7
    const-string v0, "TextInputAction.done"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v4

    goto :goto_1

    :sswitch_8
    const-string v0, "TextInputAction.unspecified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v5

    goto :goto_1

    :goto_0
    const/4 v8, -0x1

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 530
    return-object v9

    .line 527
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 525
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 523
    :pswitch_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 521
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 519
    :pswitch_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 517
    :pswitch_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 515
    :pswitch_6
    return-object v9

    .line 513
    :pswitch_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x30567324 -> :sswitch_8
        -0x2bf37e83 -> :sswitch_7
        -0x2bef1712 -> :sswitch_6
        -0x2beef2cd -> :sswitch_5
        -0x2becd27d -> :sswitch_4
        0x1bf830e3 -> :sswitch_3
        0x4a02ada3 -> :sswitch_2
        0x5bc225b9 -> :sswitch_1
        0x7dcba372 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
