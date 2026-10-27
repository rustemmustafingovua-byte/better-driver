.class public abstract Lua/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmb/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmb/q;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lmb/q;-><init>(I)V

    sput-object v0, Lua/a;->a:Lmb/q;

    return-void
.end method

.method public static final a(ILjava/lang/String;)I
    .locals 1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    shl-int/lit8 p1, v0, 0x7

    add-int/2addr p1, p0

    return p1
.end method
