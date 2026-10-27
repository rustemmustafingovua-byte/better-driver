.class public final Lcom/abovevacant/epitaph/core/CrashDetail;
.super Ljava/lang/Object;
.source "CrashDetail.java"


# instance fields
.field public final data:[B

.field public final name:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "name"    # [B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/abovevacant/epitaph/core/CrashDetail;->name:[B

    .line 14
    iput-object p2, p0, Lcom/abovevacant/epitaph/core/CrashDetail;->data:[B

    .line 15
    return-void
.end method
