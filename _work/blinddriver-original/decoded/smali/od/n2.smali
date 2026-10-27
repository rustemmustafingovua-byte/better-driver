.class public final synthetic Lod/n2;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Lr0/u0;


# direct methods
.method public constructor <init>(Lr0/u0;Lr0/u0;)V
    .locals 6

    iput-object p1, p0, Lod/n2;->s:Lr0/u0;

    iput-object p2, p0, Lod/n2;->t:Lr0/u0;

    const-string v4, "MapScreen$flyTo(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lua/nav/routing/GeoPoint;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lj9/m;

    const-string v3, "flyTo"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lua/nav/routing/GeoPoint;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lod/n2;->s:Lr0/u0;

    iget-object p0, p0, Lod/n2;->t:Lr0/u0;

    invoke-static {v0, p0, p1}, Lod/g3;->h(Lr0/u0;Lr0/u0;Lua/nav/routing/GeoPoint;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
