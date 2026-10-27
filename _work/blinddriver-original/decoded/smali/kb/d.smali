.class public final enum Lkb/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lkb/d;

.field public static final enum m:Lkb/d;

.field public static final enum n:Lkb/d;

.field public static final synthetic o:[Lkb/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkb/d;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkb/d;->l:Lkb/d;

    new-instance v1, Lkb/d;

    const-string v2, "READ_AHEAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkb/d;->m:Lkb/d;

    new-instance v2, Lkb/d;

    const-string v3, "AT_END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkb/d;->n:Lkb/d;

    filled-new-array {v0, v1, v2}, [Lkb/d;

    move-result-object v0

    sput-object v0, Lkb/d;->o:[Lkb/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkb/d;
    .locals 1

    const-class v0, Lkb/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkb/d;

    return-object p0
.end method

.method public static values()[Lkb/d;
    .locals 1

    sget-object v0, Lkb/d;->o:[Lkb/d;

    invoke-virtual {v0}, [Lkb/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkb/d;

    return-object v0
.end method
