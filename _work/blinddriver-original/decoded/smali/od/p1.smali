.class public final synthetic Lod/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:J

.field public final synthetic n:Lua/nav/routing/GeoPoint;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Li9/a;

.field public final synthetic q:Li9/a;

.field public final synthetic r:Li9/c;

.field public final synthetic s:Li9/a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLua/nav/routing/GeoPoint;Ljava/lang/String;Li9/a;Li9/a;Li9/c;Li9/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/p1;->l:Ljava/lang/String;

    iput-wide p2, p0, Lod/p1;->m:J

    iput-object p4, p0, Lod/p1;->n:Lua/nav/routing/GeoPoint;

    iput-object p5, p0, Lod/p1;->o:Ljava/lang/String;

    iput-object p6, p0, Lod/p1;->p:Li9/a;

    iput-object p7, p0, Lod/p1;->q:Li9/a;

    iput-object p8, p0, Lod/p1;->r:Li9/c;

    iput-object p9, p0, Lod/p1;->s:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x37

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v10

    iget-object v0, p0, Lod/p1;->l:Ljava/lang/String;

    iget-wide v1, p0, Lod/p1;->m:J

    iget-object v3, p0, Lod/p1;->n:Lua/nav/routing/GeoPoint;

    iget-object v4, p0, Lod/p1;->o:Ljava/lang/String;

    iget-object v5, p0, Lod/p1;->p:Li9/a;

    iget-object v6, p0, Lod/p1;->q:Li9/a;

    iget-object v7, p0, Lod/p1;->r:Li9/c;

    iget-object v8, p0, Lod/p1;->s:Li9/a;

    invoke-static/range {v0 .. v10}, Lod/g3;->a(Ljava/lang/String;JLua/nav/routing/GeoPoint;Ljava/lang/String;Li9/a;Li9/a;Li9/c;Li9/a;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
