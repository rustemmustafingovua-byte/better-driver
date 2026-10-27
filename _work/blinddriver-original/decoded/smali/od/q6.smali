.class public final synthetic Lod/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:D

.field public final synthetic n:D

.field public final synthetic o:D

.field public final synthetic p:Li9/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;DDDLi9/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/q6;->l:Ljava/lang/String;

    iput-wide p2, p0, Lod/q6;->m:D

    iput-wide p4, p0, Lod/q6;->n:D

    iput-wide p6, p0, Lod/q6;->o:D

    iput-object p8, p0, Lod/q6;->p:Li9/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xd87

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-object v0, p0, Lod/q6;->l:Ljava/lang/String;

    iget-wide v1, p0, Lod/q6;->m:D

    iget-wide v3, p0, Lod/q6;->n:D

    iget-wide v5, p0, Lod/q6;->o:D

    iget-object v7, p0, Lod/q6;->p:Li9/c;

    invoke-static/range {v0 .. v9}, Lod/v6;->d(Ljava/lang/String;DDDLi9/c;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
