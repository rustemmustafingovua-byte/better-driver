.class public final Lcom/abovevacant/epitaph/core/HeapObject;
.super Ljava/lang/Object;
.source "HeapObject.java"


# instance fields
.field public final address:J

.field public final allocationBacktrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/BacktraceFrame;",
            ">;"
        }
    .end annotation
.end field

.field public final allocationTid:J

.field public final deallocationBacktrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/BacktraceFrame;",
            ">;"
        }
    .end annotation
.end field

.field public final deallocationTid:J

.field public final size:J


# direct methods
.method public constructor <init>(JJJLjava/util/List;JLjava/util/List;)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "allocationTid"    # J
    .param p8, "deallocationTid"    # J
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
            "address",
            "size",
            "allocationTid",
            "allocationBacktrace",
            "deallocationTid",
            "deallocationBacktrace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/BacktraceFrame;",
            ">;J",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/BacktraceFrame;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p7, "allocationBacktrace":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/BacktraceFrame;>;"
    .local p10, "deallocationBacktrace":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/BacktraceFrame;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/abovevacant/epitaph/core/HeapObject;->address:J

    .line 35
    iput-wide p3, p0, Lcom/abovevacant/epitaph/core/HeapObject;->size:J

    .line 36
    iput-wide p5, p0, Lcom/abovevacant/epitaph/core/HeapObject;->allocationTid:J

    .line 37
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/HeapObject;->allocationBacktrace:Ljava/util/List;

    .line 38
    iput-wide p8, p0, Lcom/abovevacant/epitaph/core/HeapObject;->deallocationTid:J

    .line 39
    invoke-static {p10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/HeapObject;->deallocationBacktrace:Ljava/util/List;

    .line 40
    return-void
.end method
