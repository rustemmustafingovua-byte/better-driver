.class public final synthetic Lla/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Loa/d;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Z

.field public final synthetic r:Z

.field public final synthetic s:Lm2/j;


# direct methods
.method public synthetic constructor <init>(Loa/d;IIIIZZLm2/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lla/j;->l:Loa/d;

    iput p2, p0, Lla/j;->m:I

    iput p3, p0, Lla/j;->n:I

    iput p4, p0, Lla/j;->o:I

    iput p5, p0, Lla/j;->p:I

    iput-boolean p6, p0, Lla/j;->q:Z

    iput-boolean p7, p0, Lla/j;->r:Z

    iput-object p8, p0, Lla/j;->s:Lm2/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v2, p1

    check-cast v2, Lpa/r;

    move-object v9, p2

    check-cast v9, Lla/a;

    move-object v11, p3

    check-cast v11, Lpa/a;

    const-string p1, "pool"

    invoke-static {v2, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "address"

    invoke-static {v9, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "user"

    invoke-static {v11, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lpa/k;

    new-instance p2, Lpa/l;

    new-instance v0, Lpa/s;

    iget-object v1, p0, Lla/j;->l:Loa/d;

    iget v3, p0, Lla/j;->m:I

    iget v4, p0, Lla/j;->n:I

    iget v5, p0, Lla/j;->o:I

    iget v6, p0, Lla/j;->p:I

    iget-boolean v7, p0, Lla/j;->q:Z

    iget-boolean v8, p0, Lla/j;->r:Z

    iget-object v10, p0, Lla/j;->s:Lm2/j;

    invoke-direct/range {v0 .. v11}, Lpa/s;-><init>(Loa/d;Lpa/r;IIIIZZLla/a;Lm2/j;Lpa/a;)V

    invoke-direct {p2, v0}, Lpa/l;-><init>(Lpa/s;)V

    invoke-direct {p1, p2, v1}, Lpa/k;-><init>(Lpa/w;Loa/d;)V

    return-object p1
.end method
