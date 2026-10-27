.class public abstract Le2/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lpc/h;->b()Lb3/d;

    move-result-object v0

    sput-object v0, Le2/k0;->a:Lb3/d;

    return-void
.end method

.method public static final a(Le2/g0;)Le2/q1;
    .locals 0

    iget-object p0, p0, Le2/g0;->z:Le2/q1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "LayoutNode should be attached to an owner"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method
