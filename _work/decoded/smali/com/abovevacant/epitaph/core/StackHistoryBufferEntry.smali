.class public final Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;
.super Ljava/lang/Object;
.source "StackHistoryBufferEntry.java"


# instance fields
.field public final addr:Lcom/abovevacant/epitaph/core/BacktraceFrame;

.field public final fp:J

.field public final tag:J


# direct methods
.method public constructor <init>(Lcom/abovevacant/epitaph/core/BacktraceFrame;JJ)V
    .locals 0
    .param p1, "addr"    # Lcom/abovevacant/epitaph/core/BacktraceFrame;
    .param p2, "fp"    # J
    .param p4, "tag"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "addr",
            "fp",
            "tag"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;->addr:Lcom/abovevacant/epitaph/core/BacktraceFrame;

    .line 17
    iput-wide p2, p0, Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;->fp:J

    .line 18
    iput-wide p4, p0, Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;->tag:J

    .line 19
    return-void
.end method
