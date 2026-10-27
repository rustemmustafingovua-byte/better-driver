.class public final synthetic Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1, p2}, Ldev/fluttercommunity/workmanager/SharedPreferenceHelper;->$r8$lambda$7zh_4fANN_WLpZAXtFGWmAtMoYY(Lkotlin/jvm/functions/Function2;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
