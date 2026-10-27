.class public abstract enum Lcom/carrotsearch/hppc/s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final enum l:Lcom/carrotsearch/hppc/p;

.field public static final synthetic m:[Lcom/carrotsearch/hppc/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/carrotsearch/hppc/p;

    invoke-direct {v0}, Lcom/carrotsearch/hppc/p;-><init>()V

    sput-object v0, Lcom/carrotsearch/hppc/s;->l:Lcom/carrotsearch/hppc/p;

    new-instance v1, Lcom/carrotsearch/hppc/q;

    invoke-direct {v1}, Lcom/carrotsearch/hppc/q;-><init>()V

    new-instance v2, Lcom/carrotsearch/hppc/r;

    invoke-direct {v2}, Lcom/carrotsearch/hppc/r;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/carrotsearch/hppc/s;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/carrotsearch/hppc/s;->m:[Lcom/carrotsearch/hppc/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/carrotsearch/hppc/s;
    .locals 1

    const-class v0, Lcom/carrotsearch/hppc/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/carrotsearch/hppc/s;

    return-object p0
.end method

.method public static values()[Lcom/carrotsearch/hppc/s;
    .locals 1

    sget-object v0, Lcom/carrotsearch/hppc/s;->m:[Lcom/carrotsearch/hppc/s;

    invoke-virtual {v0}, [Lcom/carrotsearch/hppc/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/carrotsearch/hppc/s;

    return-object v0
.end method
