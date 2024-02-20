from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from .LiveJobsRepo import LiveJobRepository
from .LiveJobsSerializer import LiveJobSerializer

def livejobs_list(request):
    livejobs = LiveJobRepository.get_all_live_jobs()
    return render(request, 'livejobs/testPage.html', {'livejobs': livejobs})

class LiveJobsList(APIView):
    def get(self, request):
        livejobs = LiveJobRepository.get_all_live_jobs()
        serializer = LiveJobSerializer(livejobs, many=True)  # 'many=True' for queryset
        return Response(serializer.data)