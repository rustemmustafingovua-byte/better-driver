.class public final synthetic Lo0/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lo0/a4;

.field public final synthetic m:Ls/i;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Lo0/t3;

.field public final synthetic p:Z

.field public final synthetic q:J


# direct methods
.method public synthetic constructor <init>(Lo0/a4;Ls/i;Lf1/r;Lo0/t3;ZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/y3;->l:Lo0/a4;

    iput-object p2, p0, Lo0/y3;->m:Ls/i;

    iput-object p3, p0, Lo0/y3;->n:Lf1/r;

    iput-object p4, p0, Lo0/y3;->o:Lo0/t3;

    iput-boolean p5, p0, Lo0/y3;->p:Z

    iput-wide p6, p0, Lo0/y3;->q:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x30001

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v8

    iget-object v0, p0, Lo0/y3;->l:Lo0/a4;

    iget-object v1, p0, Lo0/y3;->m:Ls/i;

    iget-object v2, p0, Lo0/y3;->n:Lf1/r;

    iget-object v3, p0, Lo0/y3;->o:Lo0/t3;

    iget-boolean v4, p0, Lo0/y3;->p:Z

    iget-wide v5, p0, Lo0/y3;->q:J

    invoke-virtual/range {v0 .. v8}, Lo0/a4;->a(Ls/i;Lf1/r;Lo0/t3;ZJLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
