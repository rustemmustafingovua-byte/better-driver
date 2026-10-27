.class public final Lcom/abovevacant/epitaph/core/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# instance fields
.field public final message:Ljava/lang/String;

.field public final pid:I

.field public final priority:I

.field public final tag:Ljava/lang/String;

.field public final tid:I

.field public final timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "priority"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "timestamp",
            "pid",
            "tid",
            "priority",
            "tag",
            "message"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/LogMessage;->timestamp:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/abovevacant/epitaph/core/LogMessage;->pid:I

    .line 33
    iput p3, p0, Lcom/abovevacant/epitaph/core/LogMessage;->tid:I

    .line 34
    iput p4, p0, Lcom/abovevacant/epitaph/core/LogMessage;->priority:I

    .line 35
    iput-object p5, p0, Lcom/abovevacant/epitaph/core/LogMessage;->tag:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/abovevacant/epitaph/core/LogMessage;->message:Ljava/lang/String;

    .line 37
    return-void
.end method
