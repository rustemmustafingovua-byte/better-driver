.class public final Lm/w;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lc2/f1;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:Le2/i0;


# direct methods
.method public constructor <init>(Lc2/f1;JJLe2/i0;)V
    .locals 0

    iput-object p1, p0, Lm/w;->l:Lc2/f1;

    iput-wide p2, p0, Lm/w;->m:J

    iput-wide p4, p0, Lm/w;->n:J

    iput-object p6, p0, Lm/w;->o:Le2/i0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lc2/e1;

    iget-wide v0, p0, Lm/w;->m:J

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    iget-wide v4, p0, Lm/w;->n:J

    shr-long v6, v4, v2

    long-to-int v6, v6

    add-int/2addr v3, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    long-to-int v0, v0

    and-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v3, v3

    shl-long v1, v3, v2

    int-to-long v3, v0

    and-long/2addr v3, v6

    or-long v0, v1, v3

    iget-object v2, p0, Lm/w;->l:Lc2/f1;

    invoke-static {p1, v2}, Lc2/e1;->b(Lc2/e1;Lc2/f1;)V

    iget-wide v3, v2, Lc2/f1;->p:J

    invoke-static {v0, v1, v3, v4}, Lb3/j;->c(JJ)J

    move-result-wide v0

    const/4 p1, 0x0

    iget-object p0, p0, Lm/w;->o:Le2/i0;

    invoke-virtual {v2, v0, v1, p1, p0}, Lc2/f1;->o0(JFLi9/c;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
