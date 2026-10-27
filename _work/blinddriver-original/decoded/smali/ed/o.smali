.class public final Led/o;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final l:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string v0, "zip "

    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Led/o;->l:J

    return-void
.end method
