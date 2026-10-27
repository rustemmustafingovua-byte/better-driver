.class public final synthetic Lo0/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lz0/d;

.field public final synthetic m:Lp2/m0;

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:F

.field public final synthetic r:Lu/s0;


# direct methods
.method public synthetic constructor <init>(Lz0/d;Lp2/m0;JJJFLu/s0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/o0;->l:Lz0/d;

    iput-object p2, p0, Lo0/o0;->m:Lp2/m0;

    iput-wide p3, p0, Lo0/o0;->n:J

    iput-wide p5, p0, Lo0/o0;->o:J

    iput-wide p7, p0, Lo0/o0;->p:J

    iput p9, p0, Lo0/o0;->q:F

    iput-object p10, p0, Lo0/o0;->r:Lu/s0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v11

    iget-object v0, p0, Lo0/o0;->l:Lz0/d;

    iget-object v1, p0, Lo0/o0;->m:Lp2/m0;

    iget-wide v2, p0, Lo0/o0;->n:J

    iget-wide v4, p0, Lo0/o0;->o:J

    iget-wide v6, p0, Lo0/o0;->p:J

    iget v8, p0, Lo0/o0;->q:F

    iget-object v9, p0, Lo0/o0;->r:Lu/s0;

    invoke-static/range {v0 .. v11}, Lo0/r0;->a(Lz0/d;Lp2/m0;JJJFLu/s0;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
