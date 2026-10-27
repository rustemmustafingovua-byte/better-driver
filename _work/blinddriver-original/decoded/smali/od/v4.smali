.class public final synthetic Lod/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lu9/t;

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Ljava/io/File;

.field public final synthetic o:J

.field public final synthetic p:I

.field public final synthetic q:Ljava/io/File;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lu9/t;Lr0/u0;Ljava/io/File;JILjava/io/File;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/v4;->l:Lu9/t;

    iput-object p2, p0, Lod/v4;->m:Lr0/u0;

    iput-object p3, p0, Lod/v4;->n:Ljava/io/File;

    iput-wide p4, p0, Lod/v4;->o:J

    iput p6, p0, Lod/v4;->p:I

    iput-object p7, p0, Lod/v4;->q:Ljava/io/File;

    iput-object p8, p0, Lod/v4;->r:Lr0/u0;

    iput-object p9, p0, Lod/v4;->s:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lod/v4;->m:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v2, Lod/c5;

    const/4 v10, 0x0

    iget-object v3, p0, Lod/v4;->n:Ljava/io/File;

    iget-wide v4, p0, Lod/v4;->o:J

    iget v6, p0, Lod/v4;->p:I

    iget-object v7, p0, Lod/v4;->q:Ljava/io/File;

    iget-object v8, p0, Lod/v4;->r:Lr0/u0;

    iget-object v9, p0, Lod/v4;->s:Lr0/u0;

    invoke-direct/range {v2 .. v10}, Lod/c5;-><init>(Ljava/io/File;JILjava/io/File;Lr0/u0;Lr0/u0;Ly8/c;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lod/v4;->l:Lu9/t;

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v2, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
