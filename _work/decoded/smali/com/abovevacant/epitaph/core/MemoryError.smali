.class public final Lcom/abovevacant/epitaph/core/MemoryError;
.super Ljava/lang/Object;
.source "MemoryError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/abovevacant/epitaph/core/MemoryError$Tool;,
        Lcom/abovevacant/epitaph/core/MemoryError$Type;
    }
.end annotation


# instance fields
.field public final heap:Lcom/abovevacant/epitaph/core/HeapObject;

.field public final tool:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

.field public final type:Lcom/abovevacant/epitaph/core/MemoryError$Type;


# direct methods
.method public constructor <init>(Lcom/abovevacant/epitaph/core/MemoryError$Tool;Lcom/abovevacant/epitaph/core/MemoryError$Type;Lcom/abovevacant/epitaph/core/HeapObject;)V
    .locals 0
    .param p1, "tool"    # Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    .param p2, "type"    # Lcom/abovevacant/epitaph/core/MemoryError$Type;
    .param p3, "heap"    # Lcom/abovevacant/epitaph/core/HeapObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tool",
            "type",
            "heap"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/MemoryError;->tool:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 71
    iput-object p2, p0, Lcom/abovevacant/epitaph/core/MemoryError;->type:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 72
    iput-object p3, p0, Lcom/abovevacant/epitaph/core/MemoryError;->heap:Lcom/abovevacant/epitaph/core/HeapObject;

    .line 73
    return-void
.end method
