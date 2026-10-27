.class public final Lio/sentry/protocol/SentryStackTrace;
.super Ljava/lang/Object;
.source "SentryStackTrace.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;,
        Lio/sentry/protocol/SentryStackTrace$JsonKeys;,
        Lio/sentry/protocol/SentryStackTrace$Deserializer;
    }
.end annotation


# instance fields
.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation
.end field

.field private instructionAddressAdjustment:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

.field private registers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private snapshot:Ljava/lang/Boolean;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->frames:Ljava/util/List;

    .line 86
    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SentryStackTrace;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackTrace;
    .param p1, "x1"    # Ljava/util/List;

    .line 49
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->frames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SentryStackTrace;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackTrace;
    .param p1, "x1"    # Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->registers:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SentryStackTrace;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackTrace;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 49
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->snapshot:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/SentryStackTrace;Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;)Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackTrace;
    .param p1, "x1"    # Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 49
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->instructionAddressAdjustment:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    return-object p1
.end method


# virtual methods
.method public getFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->frames:Ljava/util/List;

    return-object v0
.end method

.method public getInstructionAddressAdjustment()Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->instructionAddressAdjustment:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    return-object v0
.end method

.method public getRegisters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->registers:Ljava/util/Map;

    return-object v0
.end method

.method public getSnapshot()Ljava/lang/Boolean;
    .locals 1

    .line 115
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->snapshot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 155
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->frames:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "frames"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackTrace;->frames:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 158
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->registers:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "registers"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackTrace;->registers:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 161
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->snapshot:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 162
    const-string v0, "snapshot"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackTrace;->snapshot:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 164
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->instructionAddressAdjustment:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    if-eqz v0, :cond_3

    .line 165
    nop

    .line 166
    const-string v0, "instruction_addr_adjustment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackTrace;->instructionAddressAdjustment:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 167
    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 169
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lio/sentry/protocol/SentryStackTrace;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/SentryStackTrace;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 173
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 174
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 176
    :cond_4
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 177
    return-void
.end method

.method public setFrames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;)V"
        }
    .end annotation

    .line 103
    .local p1, "frames":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/SentryStackFrame;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->frames:Ljava/util/List;

    .line 104
    return-void
.end method

.method public setInstructionAddressAdjustment(Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;)V
    .locals 0
    .param p1, "instructionAddressAdjustment"    # Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 141
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->instructionAddressAdjustment:Lio/sentry/protocol/SentryStackTrace$InstructionAddressAdjustment;

    .line 142
    return-void
.end method

.method public setRegisters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "registers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->registers:Ljava/util/Map;

    .line 112
    return-void
.end method

.method public setSnapshot(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "snapshot"    # Ljava/lang/Boolean;

    .line 119
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->snapshot:Ljava/lang/Boolean;

    .line 120
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackTrace;->unknown:Ljava/util/Map;

    .line 133
    return-void
.end method
