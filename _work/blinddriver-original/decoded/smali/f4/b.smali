.class public final Lf4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c1;


# static fields
.field public static final a:Lf4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf4/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf4/b;->a:Lf4/b;

    return-void
.end method


# virtual methods
.method public final b(Lj9/f;Ld4/c;)Landroidx/lifecycle/z0;
    .locals 0

    invoke-static {p1}, Ly4/s;->p(Lj9/f;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lg6/c1;->l(Ljava/lang/Class;)Landroidx/lifecycle/z0;

    move-result-object p0

    return-object p0
.end method
