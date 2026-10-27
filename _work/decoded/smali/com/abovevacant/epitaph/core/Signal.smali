.class public final Lcom/abovevacant/epitaph/core/Signal;
.super Ljava/lang/Object;
.source "Signal.java"


# instance fields
.field public final code:I

.field public final codeName:Ljava/lang/String;

.field public final faultAddress:J

.field public final faultAdjacentMetadata:Lcom/abovevacant/epitaph/core/MemoryDump;

.field public final hasFaultAddress:Z

.field public final hasSender:Z

.field public final name:Ljava/lang/String;

.field public final number:I

.field public final senderPid:I

.field public final senderUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;ZIIZJLcom/abovevacant/epitaph/core/MemoryDump;)V
    .locals 0
    .param p1, "number"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "codeName"    # Ljava/lang/String;
    .param p5, "hasSender"    # Z
    .param p6, "senderUid"    # I
    .param p7, "senderPid"    # I
    .param p8, "hasFaultAddress"    # Z
    .param p9, "faultAddress"    # J
    .param p11, "faultAdjacentMetadata"    # Lcom/abovevacant/epitaph/core/MemoryDump;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "number",
            "name",
            "code",
            "codeName",
            "hasSender",
            "senderUid",
            "senderPid",
            "hasFaultAddress",
            "faultAddress",
            "faultAdjacentMetadata"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/abovevacant/epitaph/core/Signal;->number:I

    .line 48
    iput-object p2, p0, Lcom/abovevacant/epitaph/core/Signal;->name:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/abovevacant/epitaph/core/Signal;->code:I

    .line 50
    iput-object p4, p0, Lcom/abovevacant/epitaph/core/Signal;->codeName:Ljava/lang/String;

    .line 51
    iput-boolean p5, p0, Lcom/abovevacant/epitaph/core/Signal;->hasSender:Z

    .line 52
    iput p6, p0, Lcom/abovevacant/epitaph/core/Signal;->senderUid:I

    .line 53
    iput p7, p0, Lcom/abovevacant/epitaph/core/Signal;->senderPid:I

    .line 54
    iput-boolean p8, p0, Lcom/abovevacant/epitaph/core/Signal;->hasFaultAddress:Z

    .line 55
    iput-wide p9, p0, Lcom/abovevacant/epitaph/core/Signal;->faultAddress:J

    .line 56
    iput-object p11, p0, Lcom/abovevacant/epitaph/core/Signal;->faultAdjacentMetadata:Lcom/abovevacant/epitaph/core/MemoryDump;

    .line 57
    return-void
.end method
