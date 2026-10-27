.class public final Lf2/i1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# static fields
.field public static final l:Lf2/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/i1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lj9/o;-><init>(I)V

    sput-object v0, Lf2/i1;->l:Lf2/i1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p2, p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p0, v1

    invoke-virtual {p1, p0, p2}, Lr0/q;->T(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
