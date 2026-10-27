.class public final enum Lr5/g1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lr5/g1;

.field public static final enum m:Lr5/g1;

.field public static final synthetic n:[Lr5/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lr5/g1;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr5/g1;->l:Lr5/g1;

    new-instance v1, Lr5/g1;

    const-string v2, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lr5/g1;

    const-string v3, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lr5/g1;->m:Lr5/g1;

    filled-new-array {v0, v1, v2}, [Lr5/g1;

    move-result-object v0

    sput-object v0, Lr5/g1;->n:[Lr5/g1;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/g1;
    .locals 1

    const-class v0, Lr5/g1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/g1;

    return-object p0
.end method

.method public static values()[Lr5/g1;
    .locals 1

    sget-object v0, Lr5/g1;->n:[Lr5/g1;

    invoke-virtual {v0}, [Lr5/g1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/g1;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lr5/g1;->m:Lr5/g1;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lr5/g1;->l:Lr5/g1;

    if-ne p0, v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
