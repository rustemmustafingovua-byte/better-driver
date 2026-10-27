.class Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0014J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0014\u00a8\u0006\u000f"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;",
        "Lio/flutter/plugin/common/StandardMessageCodec;",
        "<init>",
        "()V",
        "readValueOfType",
        "",
        "type",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "writeValue",
        "",
        "stream",
        "Ljava/io/ByteArrayOutputStream;",
        "value",
        "workmanager_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1091
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # B
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    nop

    .line 1094
    const/16 v0, -0x7f

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1095
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .local v0, "it":J
    const/4 v2, 0x0

    .line 1096
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$1":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->Companion:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    move-result-object v1

    .line 1095
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$1":I
    nop

    :cond_0
    return-object v1

    .line 1099
    :cond_1
    const/16 v0, -0x7e

    if-ne p1, v0, :cond_3

    .line 1100
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 1101
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$2":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->Companion:Ldev/fluttercommunity/workmanager/pigeon/NetworkType$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    move-result-object v1

    .line 1100
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$2":I
    nop

    :cond_2
    return-object v1

    .line 1104
    :cond_3
    const/16 v0, -0x7d

    if-ne p1, v0, :cond_5

    .line 1105
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 1106
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$3":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->Companion:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    move-result-object v1

    .line 1105
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$3":I
    nop

    :cond_4
    return-object v1

    .line 1109
    :cond_5
    const/16 v0, -0x7c

    if-ne p1, v0, :cond_7

    .line 1110
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 1111
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$4":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    move-result-object v1

    .line 1110
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$4":I
    nop

    :cond_6
    return-object v1

    .line 1114
    :cond_7
    const/16 v0, -0x7b

    if-ne p1, v0, :cond_9

    .line 1115
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 1116
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$5":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    move-result-object v1

    .line 1115
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$5":I
    nop

    :cond_8
    return-object v1

    .line 1119
    :cond_9
    const/16 v0, -0x7a

    if-ne p1, v0, :cond_b

    .line 1120
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_a

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 1121
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$6":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;->Companion:Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    move-result-object v1

    .line 1120
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$6":I
    nop

    :cond_a
    return-object v1

    .line 1124
    :cond_b
    const/16 v0, -0x79

    if-ne p1, v0, :cond_d

    .line 1125
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_c

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 1126
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$7":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/WorkState;->Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkState$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/WorkState$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    move-result-object v1

    .line 1125
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$7":I
    nop

    :cond_c
    return-object v1

    .line 1129
    :cond_d
    const/16 v0, -0x78

    if-ne p1, v0, :cond_f

    .line 1130
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_e

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 1131
    .local v2, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$8":I
    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType$Companion;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType$Companion;->ofRaw(I)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    move-result-object v1

    .line 1130
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$8":I
    nop

    :cond_e
    return-object v1

    .line 1134
    :cond_f
    const/16 v0, -0x77

    if-ne p1, v0, :cond_12

    .line 1135
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_10

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_10
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_11

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1136
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$9":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    move-result-object v1

    .line 1135
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$9":I
    nop

    :cond_11
    return-object v1

    .line 1139
    :cond_12
    const/16 v0, -0x76

    if-ne p1, v0, :cond_15

    .line 1140
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_13

    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_13
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_14

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1141
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$10":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->Companion:Ldev/fluttercommunity/workmanager/pigeon/Constraints$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    move-result-object v1

    .line 1140
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$10":I
    nop

    :cond_14
    return-object v1

    .line 1144
    :cond_15
    const/16 v0, -0x75

    if-ne p1, v0, :cond_18

    .line 1145
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_16

    check-cast v0, Ljava/util/List;

    goto :goto_2

    :cond_16
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_17

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1146
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$11":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;

    move-result-object v1

    .line 1145
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$11":I
    nop

    :cond_17
    return-object v1

    .line 1149
    :cond_18
    const/16 v0, -0x74

    if-ne p1, v0, :cond_1b

    .line 1150
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_19

    check-cast v0, Ljava/util/List;

    goto :goto_3

    :cond_19
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_1a

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1151
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$12":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->Companion:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    move-result-object v1

    .line 1150
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$12":I
    nop

    :cond_1a
    return-object v1

    .line 1154
    :cond_1b
    const/16 v0, -0x73

    if-ne p1, v0, :cond_1e

    .line 1155
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1c

    check-cast v0, Ljava/util/List;

    goto :goto_4

    :cond_1c
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_1d

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1156
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$13":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;

    move-result-object v1

    .line 1155
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$13":I
    nop

    :cond_1d
    return-object v1

    .line 1159
    :cond_1e
    const/16 v0, -0x72

    if-ne p1, v0, :cond_21

    .line 1160
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1f

    check-cast v0, Ljava/util/List;

    goto :goto_5

    :cond_1f
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_20

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1161
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$14":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    move-result-object v1

    .line 1160
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$14":I
    nop

    :cond_20
    return-object v1

    .line 1164
    :cond_21
    const/16 v0, -0x71

    if-ne p1, v0, :cond_24

    .line 1165
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_22

    check-cast v0, Ljava/util/List;

    goto :goto_6

    :cond_22
    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_23

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1166
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$15":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    move-result-object v1

    .line 1165
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$15":I
    nop

    :cond_23
    return-object v1

    .line 1169
    :cond_24
    const/16 v0, -0x70

    if-ne p1, v0, :cond_27

    .line 1170
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_25

    check-cast v0, Ljava/util/List;

    goto :goto_7

    :cond_25
    move-object v0, v1

    :goto_7
    if-eqz v0, :cond_26

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1171
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$16":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;

    move-result-object v1

    .line 1170
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$16":I
    nop

    :cond_26
    return-object v1

    .line 1174
    :cond_27
    const/16 v0, -0x6f

    if-ne p1, v0, :cond_2a

    .line 1175
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_28

    check-cast v0, Ljava/util/List;

    goto :goto_8

    :cond_28
    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_29

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1176
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$17":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;

    move-result-object v1

    .line 1175
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$17":I
    nop

    :cond_29
    return-object v1

    .line 1179
    :cond_2a
    const/16 v0, -0x6e

    if-ne p1, v0, :cond_2d

    .line 1180
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_2b

    check-cast v0, Ljava/util/List;

    goto :goto_9

    :cond_2b
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_2c

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1181
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$18":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;

    move-result-object v1

    .line 1180
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$18":I
    nop

    :cond_2c
    return-object v1

    .line 1184
    :cond_2d
    const/16 v0, -0x6d

    if-ne p1, v0, :cond_30

    .line 1185
    invoke-virtual {p0, p2}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_2e

    check-cast v0, Ljava/util/List;

    goto :goto_a

    :cond_2e
    move-object v0, v1

    :goto_a
    if-eqz v0, :cond_2f

    .restart local v0    # "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 1186
    .local v1, "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$19":I
    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->Companion:Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData$Companion;

    invoke-virtual {v2, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData$Companion;->fromList(Ljava/util/List;)Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    move-result-object v1

    .line 1185
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-WorkmanagerApiPigeonCodec$readValueOfType$19":I
    nop

    :cond_2f
    return-object v1

    .line 1189
    :cond_30
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 1093
    return-object v0
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "value"    # Ljava/lang/Object;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    nop

    .line 1194
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    if-eqz v0, :cond_0

    .line 1195
    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1196
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1198
    :cond_0
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    if-eqz v0, :cond_1

    .line 1199
    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1200
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1202
    :cond_1
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    if-eqz v0, :cond_2

    .line 1203
    const/16 v0, 0x83

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1204
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1206
    :cond_2
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    if-eqz v0, :cond_3

    .line 1207
    const/16 v0, 0x84

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1208
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ExistingWorkPolicy;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1210
    :cond_3
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    if-eqz v0, :cond_4

    .line 1211
    const/16 v0, 0x85

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1212
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1214
    :cond_4
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    if-eqz v0, :cond_5

    .line 1215
    const/16 v0, 0x86

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1216
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/OutOfQuotaPolicy;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1218
    :cond_5
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    if-eqz v0, :cond_6

    .line 1219
    const/16 v0, 0x87

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1220
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/WorkState;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkState;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1222
    :cond_6
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    if-eqz v0, :cond_7

    .line 1223
    const/16 v0, 0x88

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1224
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->getRaw()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1226
    :cond_7
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    if-eqz v0, :cond_8

    .line 1227
    const/16 v0, 0x89

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1228
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1230
    :cond_8
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    if-eqz v0, :cond_9

    .line 1231
    const/16 v0, 0x8a

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1232
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/Constraints;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/Constraints;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1234
    :cond_9
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;

    if-eqz v0, :cond_a

    .line 1235
    const/16 v0, 0x8b

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1236
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ContentUriTrigger;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1238
    :cond_a
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    if-eqz v0, :cond_b

    .line 1239
    const/16 v0, 0x8c

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1240
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicyConfig;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1242
    :cond_b
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;

    if-eqz v0, :cond_c

    .line 1243
    const/16 v0, 0x8d

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1244
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/InitializeRequest;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1246
    :cond_c
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    if-eqz v0, :cond_d

    .line 1247
    const/16 v0, 0x8e

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1248
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/OneOffTaskRequest;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 1250
    :cond_d
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    if-eqz v0, :cond_e

    .line 1251
    const/16 v0, 0x8f

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1252
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/PeriodicTaskRequest;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 1254
    :cond_e
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;

    if-eqz v0, :cond_f

    .line 1255
    const/16 v0, 0x90

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1256
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ProcessingTaskRequest;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 1258
    :cond_f
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;

    if-eqz v0, :cond_10

    .line 1259
    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1260
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/HealthResearchTaskRequest;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 1262
    :cond_10
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;

    if-eqz v0, :cond_11

    .line 1263
    const/16 v0, 0x92

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1264
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ContinuedProcessingTaskRequest;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 1266
    :cond_11
    instance-of v0, p2, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    if-eqz v0, :cond_12

    .line 1267
    const/16 v0, 0x93

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1268
    move-object v0, p2

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkInfoData;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldev/fluttercommunity/workmanager/pigeon/WorkmanagerApiPigeonCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 1270
    :cond_12
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 1272
    :goto_0
    return-void
.end method
