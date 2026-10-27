.class public final Lo0/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# static fields
.field public static final l:Lo0/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/w0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo0/w0;->l:Lo0/w0;

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

    sget-object p0, Lo0/h3;->a:Lo0/h3;

    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2}, Lo0/h3;->a(Lr0/q;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
