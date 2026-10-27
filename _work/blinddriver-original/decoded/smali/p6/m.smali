.class public final Lp6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final l:Lp6/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp6/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp6/m;->l:Lp6/m;

    return-void
.end method

.method public static a(I)Lp6/j;
    .locals 2

    sget-object v0, Lp6/j;->m:[Lp6/j;

    const/16 v0, 0xa

    if-gt p0, v0, :cond_1

    const/4 v0, -0x1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lp6/j;->m:[Lp6/j;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Lp6/j;

    invoke-direct {v0, p0}, Lp6/j;-><init>(I)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lp6/x;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lp6/x;->m:Lp6/x;

    return-object p0

    :cond_1
    new-instance v0, Lp6/x;

    invoke-direct {v0, p0}, Lp6/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
