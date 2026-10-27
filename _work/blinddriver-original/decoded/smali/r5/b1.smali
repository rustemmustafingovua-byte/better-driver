.class public final enum Lr5/b1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr5/b1;

.field public static final enum m:Lr5/b1;

.field public static final enum n:Lr5/b1;

.field public static final enum o:Lr5/b1;

.field public static final synthetic p:[Lr5/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lr5/b1;

    const-string v1, "SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lr5/b1;

    const-string v2, "SKIP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr5/b1;->l:Lr5/b1;

    new-instance v2, Lr5/b1;

    const-string v3, "FAIL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr5/b1;->m:Lr5/b1;

    new-instance v3, Lr5/b1;

    const-string v4, "AS_EMPTY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr5/b1;->n:Lr5/b1;

    new-instance v4, Lr5/b1;

    const-string v5, "DEFAULT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lr5/b1;->o:Lr5/b1;

    filled-new-array {v0, v1, v2, v3, v4}, [Lr5/b1;

    move-result-object v0

    sput-object v0, Lr5/b1;->p:[Lr5/b1;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/b1;
    .locals 1

    const-class v0, Lr5/b1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/b1;

    return-object p0
.end method

.method public static values()[Lr5/b1;
    .locals 1

    sget-object v0, Lr5/b1;->p:[Lr5/b1;

    invoke-virtual {v0}, [Lr5/b1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/b1;

    return-object v0
.end method
