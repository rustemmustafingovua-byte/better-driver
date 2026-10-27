.class public final synthetic Ly/f;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic s:Ly/g;

.field public final synthetic t:Le2/h1;

.field public final synthetic u:Ld5/a;


# direct methods
.method public constructor <init>(Ly/g;Le2/h1;Ld5/a;)V
    .locals 6

    iput-object p1, p0, Ly/f;->s:Ly/g;

    iput-object p2, p0, Ly/f;->t:Le2/h1;

    iput-object p3, p0, Ly/f;->u:Ld5/a;

    const-string v4, "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lj9/m;

    const-string v3, "localRect"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly/f;->t:Le2/h1;

    iget-object v1, p0, Ly/f;->u:Ld5/a;

    iget-object p0, p0, Ly/f;->s:Ly/g;

    invoke-static {p0, v0, v1}, Ly/g;->M0(Ly/g;Le2/h1;Ld5/a;)Ll1/c;

    move-result-object p0

    return-object p0
.end method
