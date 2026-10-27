.class public abstract enum Lv6/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lv6/f;

.field public static final enum m:Lv6/g;

.field public static final enum n:Lv6/h;

.field public static final synthetic o:[Lv6/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lv6/f;

    invoke-direct {v0}, Lv6/f;-><init>()V

    sput-object v0, Lv6/i;->l:Lv6/f;

    new-instance v1, Lv6/g;

    invoke-direct {v1}, Lv6/g;-><init>()V

    sput-object v1, Lv6/i;->m:Lv6/g;

    new-instance v2, Lv6/h;

    invoke-direct {v2}, Lv6/h;-><init>()V

    sput-object v2, Lv6/i;->n:Lv6/h;

    const/4 v3, 0x3

    new-array v3, v3, [Lv6/i;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lv6/i;->o:[Lv6/i;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv6/i;
    .locals 1

    const-class v0, Lv6/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv6/i;

    return-object p0
.end method

.method public static values()[Lv6/i;
    .locals 1

    sget-object v0, Lv6/i;->o:[Lv6/i;

    invoke-virtual {v0}, [Lv6/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv6/i;

    return-object v0
.end method


# virtual methods
.method public abstract a(Z)Z
.end method
