.class public abstract La0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La0/c;

    const/16 v1, 0x32

    int-to-float v1, v1

    invoke-direct {v0, v1}, La0/c;-><init>(F)V

    new-instance v1, La0/d;

    invoke-direct {v1, v0, v0, v0, v0}, La0/d;-><init>(La0/a;La0/a;La0/a;La0/a;)V

    sput-object v1, La0/e;->a:La0/d;

    return-void
.end method

.method public static final a(F)La0/d;
    .locals 1

    new-instance v0, La0/b;

    invoke-direct {v0, p0}, La0/b;-><init>(F)V

    new-instance p0, La0/d;

    invoke-direct {p0, v0, v0, v0, v0}, La0/d;-><init>(La0/a;La0/a;La0/a;La0/a;)V

    return-object p0
.end method

.method public static final b()La0/d;
    .locals 1

    sget-object v0, La0/e;->a:La0/d;

    return-object v0
.end method
