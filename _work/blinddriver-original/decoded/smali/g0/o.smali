.class public final Lg0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/z;


# instance fields
.field public final l:Lid/p;

.field public m:Lb3/l;

.field public n:Lb3/m;

.field public o:Lb3/l;

.field public p:Lb3/j;


# direct methods
.method public constructor <init>(Lid/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/o;->l:Lid/p;

    return-void
.end method


# virtual methods
.method public final a(Lb3/k;JLb3/m;J)J
    .locals 7

    iget-object v0, p0, Lg0/o;->p:Lb3/j;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lg0/o;->m:Lb3/l;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-wide v3, v1, Lb3/l;->a:J

    invoke-static {v3, v4, p2, p3}, Lb3/l;->a(JJ)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lg0/o;->n:Lb3/m;

    if-ne v1, p4, :cond_2

    iget-object v1, p0, Lg0/o;->o:Lb3/l;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v1, v1, Lb3/l;->a:J

    invoke-static {v1, v2, p5, p6}, Lb3/l;->a(JJ)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_2

    iget-wide p0, v0, Lb3/j;->a:J

    return-wide p0

    :cond_2
    iget-object v0, p0, Lg0/o;->l:Lid/p;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lid/p;->a(Lb3/k;JLb3/m;J)J

    move-result-wide p1

    new-instance p3, Lb3/l;

    invoke-direct {p3, v2, v3}, Lb3/l;-><init>(J)V

    iput-object p3, p0, Lg0/o;->m:Lb3/l;

    iput-object v4, p0, Lg0/o;->n:Lb3/m;

    new-instance p3, Lb3/l;

    invoke-direct {p3, v5, v6}, Lb3/l;-><init>(J)V

    iput-object p3, p0, Lg0/o;->o:Lb3/l;

    new-instance p3, Lb3/j;

    invoke-direct {p3, p1, p2}, Lb3/j;-><init>(J)V

    iput-object p3, p0, Lg0/o;->p:Lb3/j;

    return-wide p1
.end method
