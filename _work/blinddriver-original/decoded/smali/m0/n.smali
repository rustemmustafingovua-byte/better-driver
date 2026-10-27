.class public final Lm0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/z;


# instance fields
.field public final l:Lf1/e;

.field public final m:Lm0/r;

.field public n:J


# direct methods
.method public constructor <init>(Lf1/e;Lm0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/n;->l:Lf1/e;

    iput-object p2, p0, Lm0/n;->m:Lm0/r;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lm0/n;->n:J

    return-void
.end method


# virtual methods
.method public final a(Lb3/k;JLb3/m;J)J
    .locals 6

    iget-object p2, p0, Lm0/n;->m:Lm0/r;

    invoke-interface {p2}, Lm0/r;->a()J

    move-result-wide p2

    const-wide v0, 0x7fffffff7fffffffL

    and-long/2addr v0, p2

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p2, p0, Lm0/n;->n:J

    :goto_0
    iput-wide p2, p0, Lm0/n;->n:J

    iget-object v0, p0, Lm0/n;->l:Lf1/e;

    const-wide/16 v3, 0x0

    move-object v5, p4

    move-wide v1, p5

    invoke-interface/range {v0 .. v5}, Lf1/e;->a(JJLb3/m;)J

    move-result-wide p4

    invoke-virtual {p1}, Lb3/k;->c()J

    move-result-wide p0

    invoke-static {p2, p3}, Lr5/h1;->D(J)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lb3/j;->c(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Lb3/j;->c(JJ)J

    move-result-wide p0

    return-wide p0
.end method
