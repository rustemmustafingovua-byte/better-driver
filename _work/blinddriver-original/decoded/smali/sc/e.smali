.class public final enum Lsc/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum l:Lsc/e;

.field public static final enum m:Lsc/e;

.field public static final synthetic n:[Lsc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsc/e;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsc/e;->l:Lsc/e;

    new-instance v1, Lsc/e;

    const-string v2, "WORK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsc/e;->m:Lsc/e;

    filled-new-array {v0, v1}, [Lsc/e;

    move-result-object v0

    sput-object v0, Lsc/e;->n:[Lsc/e;

    invoke-static {v0}, Ll7/a;->k([Ljava/lang/Enum;)Lb9/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsc/e;
    .locals 1

    const-class v0, Lsc/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsc/e;

    return-object p0
.end method

.method public static values()[Lsc/e;
    .locals 1

    sget-object v0, Lsc/e;->n:[Lsc/e;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsc/e;

    return-object v0
.end method
