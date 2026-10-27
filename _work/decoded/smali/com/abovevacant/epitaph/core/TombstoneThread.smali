.class public final Lcom/abovevacant/epitaph/core/TombstoneThread;
.super Ljava/lang/Object;
.source "TombstoneThread.java"


# instance fields
.field public final backtrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/BacktraceFrame;",
            ">;"
        }
    .end annotation
.end field

.field public final backtraceNote:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final memoryDump:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/MemoryDump;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final pacEnabledKeys:J

.field public final registers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/Register;",
            ">;"
        }
    .end annotation
.end field

.field public final taggedAddrCtrl:J

.field public final unreadableElfFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p8, "taggedAddrCtrl"    # J
    .param p10, "pacEnabledKeys"    # J
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
            0x10
        }
        names = {
            "id",
            "name",
            "registers",
            "backtraceNote",
            "unreadableElfFiles",
            "backtrace",
            "memoryDump",
            "taggedAddrCtrl",
            "pacEnabledKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/Register;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/BacktraceFrame;",
            ">;",
            "Ljava/util/List<",
            "Lcom/abovevacant/epitaph/core/MemoryDump;",
            ">;JJ)V"
        }
    .end annotation

    .line 45
    .local p3, "registers":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/Register;>;"
    .local p4, "backtraceNote":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "unreadableElfFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "backtrace":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/BacktraceFrame;>;"
    .local p7, "memoryDump":Ljava/util/List;, "Ljava/util/List<Lcom/abovevacant/epitaph/core/MemoryDump;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->id:I

    .line 47
    iput-object p2, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->name:Ljava/lang/String;

    .line 48
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->registers:Ljava/util/List;

    .line 49
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->backtraceNote:Ljava/util/List;

    .line 50
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->unreadableElfFiles:Ljava/util/List;

    .line 51
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->backtrace:Ljava/util/List;

    .line 52
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->memoryDump:Ljava/util/List;

    .line 53
    iput-wide p8, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->taggedAddrCtrl:J

    .line 54
    iput-wide p10, p0, Lcom/abovevacant/epitaph/core/TombstoneThread;->pacEnabledKeys:J

    .line 55
    return-void
.end method
