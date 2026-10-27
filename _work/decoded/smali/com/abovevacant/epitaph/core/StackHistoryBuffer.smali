.class public final Lcom/abovevacant/epitaph/core/StackHistoryBuffer;
.super Ljava/lang/Object;
.source "StackHistoryBuffer.java"


# instance fields
.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final tid:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 1
    .param p1, "tid"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tid",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/StackHistoryBufferEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/abovevacant/epitaph/core/StackHistoryBuffer;->tid:J

    .line 17
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/StackHistoryBuffer;->entries:Ljava/util/List;

    .line 18
    return-void
.end method
