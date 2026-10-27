.class public final synthetic Lk0/a;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic s:Lk0/n;


# direct methods
.method public constructor <init>(Lk0/n;)V
    .locals 6

    iput-object p1, p0, Lk0/a;->s:Lk0/n;

    const-string v4, "startInput$localToScreen(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;[F)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lj9/m;

    const-string v3, "localToScreen"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lm1/z;

    iget-object p1, p1, Lm1/z;->a:[F

    iget-object p0, p0, Lk0/a;->s:Lk0/n;

    iget-object p0, p0, Lk0/n;->C:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/u;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Lc2/u;->l([F)V

    :cond_2
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
