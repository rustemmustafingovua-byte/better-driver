.class public final synthetic Lod/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:J

.field public final synthetic n:F

.field public final synthetic o:Lf1/r;


# direct methods
.method public synthetic constructor <init>(ZJFLf1/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/v3;->l:Z

    iput-wide p2, p0, Lod/v3;->m:J

    iput p4, p0, Lod/v3;->n:F

    iput-object p5, p0, Lod/v3;->o:Lf1/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v0, p0, Lod/v3;->l:Z

    iget-wide v1, p0, Lod/v3;->m:J

    iget v3, p0, Lod/v3;->n:F

    iget-object v4, p0, Lod/v3;->o:Lf1/r;

    invoke-static/range {v0 .. v6}, Lod/e4;->l(ZJFLf1/r;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
