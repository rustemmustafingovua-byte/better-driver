.class public final Lcom/abovevacant/epitaph/core/Cause;
.super Ljava/lang/Object;
.source "Cause.java"


# instance fields
.field public final humanReadable:Ljava/lang/String;

.field public final memoryError:Lcom/abovevacant/epitaph/core/MemoryError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/abovevacant/epitaph/core/MemoryError;)V
    .locals 0
    .param p1, "humanReadable"    # Ljava/lang/String;
    .param p2, "memoryError"    # Lcom/abovevacant/epitaph/core/MemoryError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "humanReadable",
            "memoryError"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/Cause;->humanReadable:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/abovevacant/epitaph/core/Cause;->memoryError:Lcom/abovevacant/epitaph/core/MemoryError;

    .line 15
    return-void
.end method
