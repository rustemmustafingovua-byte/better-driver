.class public final synthetic Lod/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Led/p;

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:Z

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Led/p;Ljava/io/File;ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z4;->l:Led/p;

    iput-object p2, p0, Lod/z4;->m:Ljava/io/File;

    iput-boolean p3, p0, Lod/z4;->n:Z

    iput-object p4, p0, Lod/z4;->o:Lr0/u0;

    iput-object p5, p0, Lod/z4;->p:Lr0/u0;

    iput-object p6, p0, Lod/z4;->q:Lr0/u0;

    iput-object p7, p0, Lod/z4;->r:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lod/z4;->o:Lr0/u0;

    iget-object v1, p0, Lod/z4;->l:Led/p;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lod/z4;->m:Ljava/io/File;

    invoke-static {v0}, Led/i;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lod/z4;->p:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lod/z4;->q:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lod/z4;->n:Z

    if-nez v0, :cond_0

    sget-object v0, Lod/j5;->a:Lod/j5;

    iget-object p0, p0, Lod/z4;->r:Lr0/u0;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
