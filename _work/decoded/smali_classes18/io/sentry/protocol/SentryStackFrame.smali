.class public final Lio/sentry/protocol/SentryStackFrame;
.super Ljava/lang/Object;
.source "SentryStackFrame.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryStackFrame$JsonKeys;,
        Lio/sentry/protocol/SentryStackFrame$Deserializer;
    }
.end annotation


# instance fields
.field private _native:Ljava/lang/Boolean;

.field private _package:Ljava/lang/String;

.field private absPath:Ljava/lang/String;

.field private addrMode:Ljava/lang/String;

.field private colno:Ljava/lang/Integer;

.field private contextLine:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private framesOmitted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private function:Ljava/lang/String;

.field private imageAddr:Ljava/lang/String;

.field private inApp:Ljava/lang/Boolean;

.field private instructionAddr:Ljava/lang/String;

.field private lineno:Ljava/lang/Integer;

.field private lock:Lio/sentry/SentryLockReason;

.field private module:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private postContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preContext:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawFunction:Ljava/lang/String;

.field private symbol:Ljava/lang/String;

.field private symbolAddr:Ljava/lang/String;

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

.field private vars:Ljava/util/Map;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lio/sentry/protocol/SentryStackFrame;Lio/sentry/SentryLockReason;)Lio/sentry/SentryLockReason;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Lio/sentry/SentryLockReason;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    return-object p1
.end method

.method static synthetic access$1802(Lio/sentry/protocol/SentryStackFrame;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/util/List;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lio/sentry/protocol/SentryStackFrame;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/util/List;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2002(Lio/sentry/protocol/SentryStackFrame;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lio/sentry/protocol/SentryStackFrame;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 25
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 375
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 376
    :cond_0
    move-object v1, p1

    check-cast v1, Lio/sentry/protocol/SentryStackFrame;

    .line 377
    .local v1, "that":Lio/sentry/protocol/SentryStackFrame;
    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    .line 378
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    .line 379
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    .line 380
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    .line 381
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    .line 382
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    .line 383
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    .line 384
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    .line 385
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    .line 386
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    .line 387
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    .line 388
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    .line 389
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    .line 390
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    .line 391
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    .line 392
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    .line 393
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    .line 394
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    .line 395
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    .line 396
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    .line 397
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    .line 398
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    iget-object v3, v1, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    .line 399
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 377
    :goto_0
    return v0

    .line 375
    .end local v1    # "that":Lio/sentry/protocol/SentryStackFrame;
    :cond_2
    :goto_1
    return v0
.end method

.method public getAbsPath()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAddrMode()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    return-object v0
.end method

.method public getColno()Ljava/lang/Integer;
    .locals 1

    .line 223
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContextLine()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFramesOmitted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    return-object v0
.end method

.method public getImageAddr()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructionAddr()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLineno()Ljava/lang/Integer;
    .locals 1

    .line 215
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLock()Lio/sentry/SentryLockReason;
    .locals 1

    .line 329
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPostContext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    return-object v0
.end method

.method public getPreContext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    return-object v0
.end method

.method public getRawFunction()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolAddr()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

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

    .line 341
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getVars()Ljava/util/Map;
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

    .line 175
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 25

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    iget-object v2, v0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    iget-object v3, v0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    iget-object v4, v0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    iget-object v5, v0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    iget-object v6, v0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    iget-object v7, v0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    iget-object v8, v0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    iget-object v9, v0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    iget-object v10, v0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    iget-object v11, v0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    iget-object v12, v0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    iget-object v13, v0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    iget-object v14, v0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    iget-object v15, v0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    move-object/from16 v22, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    move-object/from16 v24, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v24

    filled-new-array/range {v1 .. v23}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public isInApp()Ljava/lang/Boolean;
    .locals 1

    .line 247
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isNative()Ljava/lang/Boolean;
    .locals 1

    .line 303
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

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

    .line 433
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 434
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "filename"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 437
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 438
    const-string v0, "function"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 440
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 441
    const-string v0, "module"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 443
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 444
    const-string v0, "lineno"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 446
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 447
    const-string v0, "colno"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 449
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 450
    const-string v0, "abs_path"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 452
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 453
    const-string v0, "context_line"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 455
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 456
    const-string v0, "in_app"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 458
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 459
    const-string v0, "package"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 461
    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 462
    const-string v0, "native"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    .line 464
    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 465
    const-string v0, "platform"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 467
    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 468
    const-string v0, "image_addr"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 470
    :cond_b
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 471
    const-string v0, "symbol_addr"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 473
    :cond_c
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 474
    const-string v0, "instruction_addr"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 476
    :cond_d
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 477
    const-string v0, "addr_mode"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 479
    :cond_e
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 480
    const-string v0, "raw_function"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 482
    :cond_f
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 483
    const-string v0, "symbol"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 485
    :cond_10
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    if-eqz v0, :cond_11

    .line 486
    const-string v0, "lock"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 488
    :cond_11
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 489
    const-string v0, "pre_context"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 491
    :cond_12
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 492
    const-string v0, "post_context"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 494
    :cond_13
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 495
    const-string v0, "vars"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 497
    :cond_14
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_15

    .line 498
    iget-object v0, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 500
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 501
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 502
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 504
    :cond_15
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 505
    return-void
.end method

.method public setAbsPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "absPath"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->absPath:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setAddrMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "addrMode"    # Ljava/lang/String;

    .line 299
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->addrMode:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setColno(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "colno"    # Ljava/lang/Integer;

    .line 227
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->colno:Ljava/lang/Integer;

    .line 228
    return-void
.end method

.method public setContextLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextLine"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->contextLine:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->filename:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setFramesOmitted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "framesOmitted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->framesOmitted:Ljava/util/List;

    .line 188
    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->function:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setImageAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageAddr"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->imageAddr:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setInApp(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "inApp"    # Ljava/lang/Boolean;

    .line 251
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->inApp:Ljava/lang/Boolean;

    .line 252
    return-void
.end method

.method public setInstructionAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "instructionAddr"    # Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->instructionAddr:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setLineno(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "lineno"    # Ljava/lang/Integer;

    .line 219
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lineno:Ljava/lang/Integer;

    .line 220
    return-void
.end method

.method public setLock(Lio/sentry/SentryLockReason;)V
    .locals 0
    .param p1, "lock"    # Lio/sentry/SentryLockReason;

    .line 333
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->lock:Lio/sentry/SentryLockReason;

    .line 334
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->module:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setNative(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "_native"    # Ljava/lang/Boolean;

    .line 307
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_native:Ljava/lang/Boolean;

    .line 308
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "_package"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->_package:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->platform:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setPostContext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "postContext":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->postContext:Ljava/util/List;

    .line 172
    return-void
.end method

.method public setPreContext(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "preContext":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->preContext:Ljava/util/List;

    .line 164
    return-void
.end method

.method public setRawFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawFunction"    # Ljava/lang/String;

    .line 315
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->rawFunction:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbol:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setSymbolAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "symbolAddr"    # Ljava/lang/String;

    .line 283
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->symbolAddr:Ljava/lang/String;

    .line 284
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

    .line 346
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->unknown:Ljava/util/Map;

    .line 347
    return-void
.end method

.method public setVars(Ljava/util/Map;)V
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

    .line 179
    .local p1, "vars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/protocol/SentryStackFrame;->vars:Ljava/util/Map;

    .line 180
    return-void
.end method
