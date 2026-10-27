.class public final Lcom/abovevacant/epitaph/core/FD;
.super Ljava/lang/Object;
.source "FD.java"


# instance fields
.field public final fd:I

.field public final owner:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final tag:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "fd"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "tag"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fd",
            "path",
            "owner",
            "tag"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/abovevacant/epitaph/core/FD;->fd:I

    .line 20
    iput-object p2, p0, Lcom/abovevacant/epitaph/core/FD;->path:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/abovevacant/epitaph/core/FD;->owner:Ljava/lang/String;

    .line 22
    iput-wide p4, p0, Lcom/abovevacant/epitaph/core/FD;->tag:J

    .line 23
    return-void
.end method
