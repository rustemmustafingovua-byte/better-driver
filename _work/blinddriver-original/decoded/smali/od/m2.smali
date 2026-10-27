.class public final synthetic Lod/m2;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic s:Lua/nav/c;

.field public final synthetic t:Lu9/t;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;


# direct methods
.method public constructor <init>(Lua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;)V
    .locals 6

    iput-object p1, p0, Lod/m2;->s:Lua/nav/c;

    iput-object p2, p0, Lod/m2;->t:Lu9/t;

    iput-object p3, p0, Lod/m2;->u:Lr0/u0;

    iput-object p4, p0, Lod/m2;->v:Lr0/u0;

    const-string v4, "MapScreen$flyAndDrag(Lua/nav/NavViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lua/nav/Endpoint;Lua/nav/routing/GeoPoint;Z)V"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lj9/m;

    const-string v3, "flyAndDrag"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Lsc/d;

    move-object v5, p2

    check-cast v5, Lua/nav/routing/GeoPoint;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string p1, "p0"

    invoke-static {v4, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {v5, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lod/m2;->u:Lr0/u0;

    iget-object v3, p0, Lod/m2;->v:Lr0/u0;

    iget-object v0, p0, Lod/m2;->s:Lua/nav/c;

    iget-object v1, p0, Lod/m2;->t:Lu9/t;

    invoke-static/range {v0 .. v6}, Lod/g3;->g(Lua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;Lsc/d;Lua/nav/routing/GeoPoint;Z)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
