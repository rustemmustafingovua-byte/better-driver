.class public final Ll0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ll0/m;


# instance fields
.field public final a:Lc2/u;

.field public final b:Lp2/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll0/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ll0/m;-><init>(Lc2/u;Lp2/j0;)V

    sput-object v0, Ll0/m;->c:Ll0/m;

    return-void
.end method

.method public constructor <init>(Lc2/u;Lp2/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/m;->a:Lc2/u;

    iput-object p2, p0, Ll0/m;->b:Lp2/j0;

    return-void
.end method

.method public static a(Ll0/m;Le2/h1;Lp2/j0;I)Ll0/m;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Ll0/m;->a:Lc2/u;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ll0/m;->b:Lp2/j0;

    :cond_1
    new-instance p0, Ll0/m;

    invoke-direct {p0, p1, p2}, Ll0/m;-><init>(Lc2/u;Lp2/j0;)V

    return-object p0
.end method
